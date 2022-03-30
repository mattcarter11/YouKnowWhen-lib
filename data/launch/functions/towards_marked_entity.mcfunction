# Get x
execute store result score #x launch run data get entity @s Pos[0] 1000
execute store result score #y launch run data get entity @s Pos[1] 1000
execute store result score #z launch run data get entity @s Pos[2] 1000

# Get dx
execute facing entity @e[tag=launch_mark,limit=1] eyes run tp @s ^ ^ ^0.1
execute store result score #dx launch run data get entity @s Pos[0] 1000
execute store result score #dy launch run data get entity @s Pos[1] 1000
execute store result score #dz launch run data get entity @s Pos[2] 1000

# Restore position
tp @s ~ ~ ~

# Calc vector
scoreboard players operation #dx launch -= #x launch
scoreboard players operation #dy launch -= #y launch
scoreboard players operation #dz launch -= #z launch

# Multiply by scalar
scoreboard players operation #dx launch *= factor launch
scoreboard players operation #dy launch *= factor launch
scoreboard players operation #dz launch *= factor launch

# Limit distance
execute unless score max_value launch matches 0 run function launch:private/max_value

# Apply motion
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #dx launch
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #dy launch
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #dz launch

# Reset scalar
execute if score reset_factor_on_launch launch matches 1 run scoreboard players set factor launch 1

# Remove launch_mark
tag @e[tag=launch_mark,limit=1] remove launch_mark