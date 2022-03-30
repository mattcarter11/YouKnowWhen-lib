scoreboard players set .system ch1_olink 0
execute if entity @s[type=!player] run scoreboard players set .system ch1_olink 300

execute if entity @s[type=player] as @a[scores={ch1_olink=1..}] run scoreboard players operation .system ch1_olink > @s ch1_olink
execute if entity @s[type=!player] as @e[scores={ch1_olink=1..}] run scoreboard players operation .system ch1_olink > @s ch1_olink

scoreboard players add .system ch1_olink 1
scoreboard players operation @s ch1_olink = .system ch1_olink
scoreboard players operation .id ch1_olink = .system ch1_olink

# tellraw @a [{"score":{"name":".system","objective":"ch1_olink"}}]