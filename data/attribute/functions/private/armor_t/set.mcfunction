# Clear attributes
execute if score @s a_armor_t matches 0.. run function attribute:private/armor_t/positive/reset
execute unless score @s a_armor_t matches 0.. run function attribute:private/armor_t/negative/reset

# Update current attribute score
scoreboard players operation @s a_armor_t = armor_t attributes

# Update attribute
execute if score armor_t attributes matches 0.. run function attribute:private/armor_t/positive/set
execute unless score armor_t attributes matches 0.. run function attribute:private/armor_t/negative/set
