# Clear attributes
execute if score @s a_health matches 0.. run function attribute:private/health/positive/reset
execute unless score @s a_health matches 0.. run function attribute:private/health/negative/reset

# Update current attribute score
scoreboard players operation @s a_health = health attributes

# Update attribute
execute if score health attributes matches 0.. run function attribute:private/health/positive/set
execute unless score health attributes matches 0.. run function attribute:private/health/negative/set
