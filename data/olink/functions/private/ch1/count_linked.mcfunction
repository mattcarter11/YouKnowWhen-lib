# Get id
scoreboard players operation .id ch1_olink = @s ch1_olink
# Count
execute as @e[scores={ch1_olink=1..}] if score @s ch1_olink = .id ch1_olink run scoreboard players add .count ch1_olink 1
