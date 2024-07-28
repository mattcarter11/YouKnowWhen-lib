# Factor difficulty, resistance and armor
scoreboard players operation #amount damage = @s damage
execute if score ignore_difficulty damage matches 0 run function damage:private/factor/difficulty
execute if score ignore_armor damage matches 0 run function damage:private/factor/armor
execute if score ignore_resistance damage matches 0 if predicate damage:has_resistance run function damage:private/factor/resistance
scoreboard players operation @s damage = #amount damage

# Add damage caluclated in other ways (custom factors flags)
scoreboard players operation @s damage += @s damage_custom
scoreboard players reset @s damage_custom

# Figure out if it dies or gets damaged
execute store result score #health damage run data get entity @s Health 100
scoreboard players operation #health damage -= @s damage
execute if score #health damage matches ..100 run kill @s
execute if score #health damage matches 100.. run function damage:private/1_reduce_health
# tellraw @a {"score":{"name":"#health","objective":"damage"}}

# HP particle
execute if score @s damage matches 200.. run function damage:private/hp_particle/main

# Trigger function so you can trigger things
function damage:trigger

# Clear score
scoreboard players reset @s damage