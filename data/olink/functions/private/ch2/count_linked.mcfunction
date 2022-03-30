# Reset
scoreboard players set .count ch2_olink 0
# Get id
scoreboard players operation .id ch2_olink = @s ch2_olink
# Count
execute as @e[scores={ch2_olink=1..}] if score @s ch2_olink = .id ch2_olink run scoreboard players add .count ch2_olink 1
