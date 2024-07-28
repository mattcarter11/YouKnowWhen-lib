scoreboard players set .system ch2_olink 0
execute if entity @s[type=!player] run scoreboard players set .system ch2_olink 300

execute if entity @s[type=player] as @a[scores={ch2_olink=1..}] run scoreboard players operation .system ch2_olink > @s ch2_olink
execute if entity @s[type=!player] as @e[scores={ch2_olink=1..}] run scoreboard players operation .system ch2_olink > @s ch2_olink

scoreboard players add .system ch2_olink 1
scoreboard players operation @s ch2_olink = .system ch2_olink
scoreboard players operation .id ch2_olink = .system ch2_olink

# tellraw @a [{"score":{"name":".system","objective":"ch2_olink"}}]

