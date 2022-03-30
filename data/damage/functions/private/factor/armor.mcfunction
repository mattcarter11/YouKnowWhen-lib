# MC formula
#   damage = damage * (1 - resisted)
#   resisted = min(20, max(a, b)) / 25
#   a = armor/5
#   b = armor - 4*damage/(armor_t+8)

# Get armor and armor_toughness level scaled by 100
execute store result score #armor damage run attribute @s minecraft:generic.armor get 100
execute store result score #armor_t damage run attribute @s minecraft:generic.armor_toughness get 100


# Calculate the dmg remaining
scoreboard players operation #a damage = #armor damage
scoreboard players set #tmp damage 5
scoreboard players operation #a damage /= #tmp damage

scoreboard players operation #b damage = #armor damage
scoreboard players set #b1 damage 4
scoreboard players operation #b1 damage *= #amount damage
scoreboard players operation #b2 damage = #armor_t damage
scoreboard players add #b2 damage 8
scoreboard players operation #b1 damage /= #b2 damage
scoreboard players operation #b damage -= #b1 damage

execute if score #a damage >= #b damage run scoreboard players operation #max damage = #a damage
execute if score #a damage < #b damage run scoreboard players operation #max damage = #b damage

scoreboard players set #min damage 20000
execute if score #max damage < #min damage run scoreboard players operation #min damage = #max damage

scoreboard players set #tmp damage 25
scoreboard players operation #min damage /= #tmp damage

scoreboard players set #recieved damage 100
scoreboard players operation #recieved damage -= #min damage
scoreboard players operation #amount damage *= #recieved damage
scoreboard players set #tmp damage 100
scoreboard players operation #amount damage /= #tmp damage

# tellraw @s ["Armor factor  ->  protected: ",{"score":{"name":"#min","objective":"damage"}},"%  recieved: ",{"score":{"name":"#recieved","objective":"damage"}},"%  damage: ",{"score":{"name":"@s","objective":"damage"}}]
