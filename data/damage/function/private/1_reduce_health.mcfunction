# Figure how much maximum health should be reduced
execute store result score #max_health damage run attribute @s generic.max_health get 100
scoreboard players operation #max_hp_reduction damage = #max_health damage
scoreboard players operation #max_hp_reduction damage -= #health damage
# tellraw @a {"score":{"name":"#max_hp_reduction","objective":"damage"}}

# Reduce maximum health with binary increments
execute store result storage damage value float -0.01 run scoreboard players get #max_hp_reduction damage
function damage:private/macro_max_hp_attribute with storage damage

# Update health to new max health
effect give @s health_boost 1 0
effect clear @s health_boost

# tellraw @a {"entity":"@s","nbt":"Health"}

# Damage animate
execute if entity @s[type=!#undead,type=!player] run effect give @s instant_damage 1 31 true
execute if entity @s[type=#undead,type=!player] run effect give @s instant_health 1 31 true
execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:5,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:5,duration:1,show_particles:0b}]}}

# Update health to real max health
attribute @s generic.max_health modifier remove damage.max_hp