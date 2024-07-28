scoreboard players set facing_target ebackoff 0
execute as @e[type=pillager] at @s if entity @p[distance=..10] run function ebackoff:from_nearest_player