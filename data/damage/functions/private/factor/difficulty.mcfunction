# Get difficulty
execute store result score #difficulty damage run difficulty

# Calculate the dmg remaining
scoreboard players operation #dmg damage = #amount damage
execute if score #difficulty damage matches 1 run scoreboard players set #recieved damage 50
execute if score #difficulty damage matches 2 run scoreboard players set #recieved damage 100
execute if score #difficulty damage matches 3 run scoreboard players set #recieved damage 150
scoreboard players operation #amount damage *= #recieved damage
scoreboard players set #tmp damage 100
scoreboard players operation #amount damage /= #tmp damage

execute if score #difficulty damage matches 1 run scoreboard players add #amount damage 100

# tellraw @s ["Difficulty factor  ->  recieved: ",{"score":{"name":"#recieved","objective":"damage"}},"%  damage: ",{"score":{"name":"@s","objective":"damage"}}]
