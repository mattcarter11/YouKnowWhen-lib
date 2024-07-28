# Clear attributes
execute if score @s a_damage matches 0.. run function attribute:private/damage/positive/reset
execute unless score @s a_damage matches 0.. run function attribute:private/damage/negative/reset

# Update current attribute score
scoreboard players operation @s a_damage = damage attributes

# Update attribute
execute if score damage attributes matches 0.. run function attribute:private/damage/positive/set
execute unless score damage attributes matches 0.. run function attribute:private/damage/negative/set
