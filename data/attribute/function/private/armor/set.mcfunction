# Clear attributes
execute if score @s a_armor matches 0.. run function attribute:private/armor/positive/reset
execute unless score @s a_armor matches 0.. run function attribute:private/armor/negative/reset

# Update current attribute score
scoreboard players operation @s a_armor = armor attributes

# Update attribute
execute if score armor attributes matches 0.. run function attribute:private/armor/positive/set
execute unless score armor attributes matches 0.. run function attribute:private/armor/negative/set
