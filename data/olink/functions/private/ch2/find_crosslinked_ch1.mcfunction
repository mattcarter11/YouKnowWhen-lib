# Store link id
scoreboard players operation .id ch2_olink = @s ch2_olink
# Scoreboard and count
execute as @e[scores={ch1_olink=1..}] if score @s ch1_olink = .id ch2_olink run tag @s add ch2_olinked_ch1
tag @s add ch2_olinked_ch1
