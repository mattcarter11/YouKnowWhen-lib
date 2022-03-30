# Clear attributes
execute if score @s a_speed matches 0.. run function attribute:private/speed/positive/reset
execute unless score @s a_speed matches 0.. run function attribute:private/speed/negative/reset

# Update current attribute score
scoreboard players operation @s a_speed = speed attributes

# Update attribute
execute if score speed attributes matches 0.. run function attribute:private/speed/positive/set
execute unless score speed attributes matches 0.. run function attribute:private/speed/negative/set
