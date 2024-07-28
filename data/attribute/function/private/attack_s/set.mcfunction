# Clear attributes
execute if score @s a_attack_s matches 0.. run function attribute:private/attack_s/positive/reset
execute unless score @s a_attack_s matches 0.. run function attribute:private/attack_s/negative/reset

# Update current attribute score
scoreboard players operation @s a_attack_s = attack_s attributes

# Update attribute
execute if score attack_s attributes matches 0.. run function attribute:private/attack_s/positive/set
execute unless score attack_s attributes matches 0.. run function attribute:private/attack_s/negative/set
