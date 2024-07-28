# Move to new position
tp @s ~ ~ ~ facing entity @e[tag=ebackoff_target,limit=1]
execute as @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^0.1

tag @e[tag=ebackoff_target,limit=1] remove ebackoff_target

# Save end position
execute store result score #dx ebackoff run data get entity @s Pos[0] 1000
execute store result score #dz ebackoff run data get entity @s Pos[2] 1000

# Save rotation
execute if score facing_target ebackoff matches 1 run data modify entity @s Rotation[0] set from entity @s Rotation[0]
execute if score facing_target ebackoff matches 1 run data modify entity @s Rotation[1] set from entity @s Rotation[1]

kill @s