scoreboard players operation #amount damage = amount damage_custom
execute if score ignore_difficulty damage_custom matches 0 run function damage:private/factor/difficulty
execute if score ignore_armor damage_custom matches 0 run function damage:private/factor/armor
execute if score ignore_resistance damage_custom matches 0 if predicate damage:has_resistance run function damage:private/factor/resistance
scoreboard players operation @s damage_custom = #amount damage

# Set score so the tick knows to apply damage
scoreboard players add @s damage 0

# Reset values
scoreboard players set amount damage_custom 0
scoreboard players set ignore_armor damage_custom 0
scoreboard players set ignore_resistance damage_custom 0
scoreboard players set ignore_difficulty damage_custom 0