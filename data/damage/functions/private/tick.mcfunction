execute as @a[gamemode=!creative,gamemode=!spectator,scores={damage=0..}] at @s run function damage:private/0_apply
execute as @e[type=!#no_interaction_p,scores={damage=0..}] at @s run function damage:private/0_apply
