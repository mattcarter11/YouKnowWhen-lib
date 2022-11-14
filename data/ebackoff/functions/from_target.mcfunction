summon area_effect_cloud ~ ~ ~ {Tags:["align"]}
tp @e[type=area_effect_cloud,tag=align,limit=1] ~ ~ ~ facing entity @e[tag=ebackoff_target,limit=1]

tag @e[tag=ebackoff_target,limit=1] remove ebackoff_target

# Get vector origin and end
execute store result score #x ebackoff run data get entity @s Pos[0] 1000
execute store result score #z ebackoff run data get entity @s Pos[2] 1000

execute as @e[type=area_effect_cloud,tag=align,limit=1] rotated as @s rotated ~ 0 run tp @s ^ ^ ^0.1
execute store result score #dx ebackoff run data get entity @e[type=area_effect_cloud,tag=align,limit=1] Pos[0] 1000
execute store result score #dz ebackoff run data get entity @e[type=area_effect_cloud,tag=align,limit=1] Pos[2] 1000

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

# Facing target
execute if score facing_target ebackoff matches 1 run data modify entity @s Rotation[0] set from entity @e[type=area_effect_cloud,tag=align,limit=1,sort=nearest] Rotation[0]
execute if score facing_target ebackoff matches 1 run data modify entity @s Rotation[1] set from entity @e[type=area_effect_cloud,tag=align,limit=1,sort=nearest] Rotation[1]

kill @e[type=area_effect_cloud,tag=align,limit=1]