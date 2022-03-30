# Get x
execute store result score #x launch run data get entity @s Pos[0] 1000
execute store result score #y launch run data get entity @s Pos[1] 1000
execute store result score #z launch run data get entity @s Pos[2] 1000

# Get dx
execute store result score #dx launch run data get entity @e[tag=launch_mark,limit=1] Pos[0] 1000
execute store result score #dy launch run data get entity @e[tag=launch_mark,limit=1] Pos[1] 1000
execute store result score #dz launch run data get entity @e[tag=launch_mark,limit=1] Pos[2] 1000

# Calc vector
scoreboard players operation #dx launch -= #x launch
scoreboard players operation #dy launch -= #y launch
scoreboard players operation #dz launch -= #z launch

# Factor gravity
scoreboard players add #dy launch 1400

# Limit distance
execute unless score max_value launch matches 0 run function launch:private/max_value

# Apply motion
execute store result entity @s Motion[0] double 0.00022 run scoreboard players get #dx launch
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get #dy launch
execute store result entity @s Motion[2] double 0.00022 run scoreboard players get #dz launch

# Remove launch_mark
tag @e[tag=launch_mark,limit=1] remove launch_mark