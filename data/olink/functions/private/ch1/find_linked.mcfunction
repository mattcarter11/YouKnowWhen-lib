# Store link id
scoreboard players operation .id ch1_olink = @s ch1_olink
# Scoreboard and count
execute as @e[scores={ch1_olink=1..}] if score @s ch1_olink = .id ch1_olink run tag @s add ch1_olinked
