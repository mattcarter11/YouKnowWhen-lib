scoreboard players set facing_target eapproach 1
execute as @e[type=cat] at @s if entity @p[distance=4..15] run function eapproach:nearest_player