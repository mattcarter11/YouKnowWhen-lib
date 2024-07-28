# Store link id
scoreboard players operation .id ch2_olink = @s ch2_olink
# Scoreboard and count
execute as @e[scores={ch2_olink=1..}] if score @s ch2_olink = .id ch2_olink run function olink:private/ch2/find_count
