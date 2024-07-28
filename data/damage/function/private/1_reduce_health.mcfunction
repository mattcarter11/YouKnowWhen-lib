# Figure how much maximum health should be reduced
execute store result score #max_health damage run attribute @s generic.max_health get 100
scoreboard players operation #max_hp_reduction damage = #max_health damage
scoreboard players operation #max_hp_reduction damage -= #health damage
# tellraw @a {"score":{"name":"#max_hp_reduction","objective":"damage"}}

# Reduce maximum health with binary increments
execute if score #max_hp_reduction damage matches 65536.. run function damage:private/attributes/65536
execute if score #max_hp_reduction damage matches 32768.. run function damage:private/attributes/32768
execute if score #max_hp_reduction damage matches 16384.. run function damage:private/attributes/16384
execute if score #max_hp_reduction damage matches 8192.. run function damage:private/attributes/8192
execute if score #max_hp_reduction damage matches 4096.. run function damage:private/attributes/4096
execute if score #max_hp_reduction damage matches 2048.. run function damage:private/attributes/2048
execute if score #max_hp_reduction damage matches 1024.. run function damage:private/attributes/1024
execute if score #max_hp_reduction damage matches 512.. run function damage:private/attributes/512
execute if score #max_hp_reduction damage matches 256.. run function damage:private/attributes/256
execute if score #max_hp_reduction damage matches 128.. run function damage:private/attributes/128
execute if score #max_hp_reduction damage matches 64.. run function damage:private/attributes/64
execute if score #max_hp_reduction damage matches 32.. run function damage:private/attributes/32
execute if score #max_hp_reduction damage matches 16.. run function damage:private/attributes/16
execute if score #max_hp_reduction damage matches 8.. run function damage:private/attributes/8
execute if score #max_hp_reduction damage matches 4.. run function damage:private/attributes/4
execute if score #max_hp_reduction damage matches 2.. run function damage:private/attributes/2
execute if score #max_hp_reduction damage matches 1.. run function damage:private/attributes/1

# Update health to new max health
effect give @s health_boost 1 0
effect clear @s health_boost

# Damage animate
execute if entity @s[type=!player] run function damage:private/animate/mob
execute if entity @s[type=player] run function damage:private/animate/player

# Update health to real max health
function damage:private/attributes/reset
