# Clear attributes
execute if score @s a_knock_r matches 0.. run function attribute:private/knock_r/positive/reset
execute unless score @s a_knock_r matches 0.. run function attribute:private/knock_r/negative/reset

# Update current attribute score
scoreboard players operation @s a_knock_r = knock_r attributes

# Update attribute
execute if score knock_r attributes matches 0.. run function attribute:private/knock_r/positive/set
execute unless score knock_r attributes matches 0.. run function attribute:private/knock_r/negative/set
