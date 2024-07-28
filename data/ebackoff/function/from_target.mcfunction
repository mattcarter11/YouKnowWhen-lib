# Get vector origin, end and save rotation
execute store result score #x ebackoff run data get entity @s Pos[0] 1000
execute store result score #z ebackoff run data get entity @s Pos[2] 1000
execute summon area_effect_cloud run function ebackoff:private/get_end_pos_data

# Calc motion
scoreboard players operation #dx ebackoff -= #x ebackoff
scoreboard players operation #dz ebackoff -= #z ebackoff

scoreboard players operation #dx ebackoff *= factor ebackoff
scoreboard players operation #dz ebackoff *= factor ebackoff
scoreboard players set factor ebackoff 100

# Set motion
execute if score entity_shifts ebackoff matches 0 run function ebackoff:private/ignore_falling
execute if score entity_shifts ebackoff matches 1 run function ebackoff:private/check_if_falling
execute if score #xsolid ebackoff matches 1 store result entity @s Motion[0] double -0.00001 run scoreboard players get #dx ebackoff
execute if score #ysolid ebackoff matches 1 store result entity @s Motion[2] double -0.00001 run scoreboard players get #dz ebackoff
scoreboard players set entity_shifts ebackoff 1