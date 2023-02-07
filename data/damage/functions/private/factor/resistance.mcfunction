# Get resistance level
execute store result score #lvl damage run data get entity @s ActiveEffects[{Id:11}].Amplifier
scoreboard players add #lvl damage 1
execute if score #lvl damage matches 6.. run scoreboard players set #lvl damage 5

# Calculate the reduction (20% for level)
scoreboard players set #tmp damage 20
scoreboard players operation #lvl damage *= #tmp damage

# Calculate the dmg remaining
scoreboard players set #recieved damage 100
scoreboard players operation #recieved damage -= #lvl damage
scoreboard players operation #amount damage *= #recieved damage
scoreboard players set #tmp damage 100
scoreboard players operation #amount damage /= #tmp damage

# tellraw @s ["Resistance factor -> resisted: ",{"score":{"name":"#lvl","objective":"damage"}},"%  recieved: ",{"score":{"name":"#recieved","objective":"damage"}},"&  damage: ",{"score":{"name":"@s","objective":"damage"}}]
