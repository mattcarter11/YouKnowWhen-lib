scoreboard players set #xsolid ebackoff 0
scoreboard players set #ysolid ebackoff 0

execute unless block ~0.2 ~-1 ~ #ebackoff:blacklisted unless block ~-0.2 ~-1 ~ #ebackoff:blacklisted run scoreboard players set #xsolid ebackoff 1
execute if block ~0.2 ~-1 ~ #ebackoff:blacklisted unless block ~0.2 ~-2 ~ #ebackoff:blacklisted unless block ~0.2 ~-1 ~ water unless block ~0.5 ~-1 ~ lava run scoreboard players set #xsolid ebackoff 1
execute if block ~-0.2 ~-1 ~ #ebackoff:blacklisted unless block ~-0.2 ~-2 ~ #ebackoff:blacklisted unless block ~-0.2 ~-1 ~ water unless block ~-0.5 ~-1 ~ lava run scoreboard players set #xsolid ebackoff 1

execute unless block ~ ~-1 ~0.2 #ebackoff:blacklisted unless block ~ ~-1 ~-0.2 #ebackoff:blacklisted run scoreboard players set #ysolid ebackoff 1
execute if block ~ ~-1 ~0.2 #ebackoff:blacklisted unless block ~ ~-2 ~0.2 #ebackoff:blacklisted unless block ~ ~-1 ~0.2 water unless block ~ ~-1 ~0.5 lava run scoreboard players set #ysolid ebackoff 1
execute if block ~ ~-1 ~-0.2 #ebackoff:blacklisted unless block ~ ~-2 ~-0.2 #ebackoff:blacklisted unless block ~ ~-1 ~-0.2 water unless block ~ ~-1 ~-0.5 lava run scoreboard players set #ysolid ebackoff 1