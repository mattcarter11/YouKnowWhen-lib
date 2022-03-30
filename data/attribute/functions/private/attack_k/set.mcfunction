# Clear attributes
execute if score @s a_attack_k matches 0.. run function attribute:private/attack_k/positive/reset
execute unless score @s a_attack_k matches 0.. run function attribute:private/attack_k/negative/reset

# Update current attribute score
scoreboard players operation @s a_attack_k = attack_k attributes

# Update attribute
execute if score attack_k attributes matches 0.. run function attribute:private/attack_k/positive/set
execute unless score attack_k attributes matches 0.. run function attribute:private/attack_k/negative/set
