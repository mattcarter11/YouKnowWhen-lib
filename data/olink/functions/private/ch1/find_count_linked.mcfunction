# Reset
scoreboard players set .count ch1_olink 0
tag @e[tag=ch1_olinked] remove ch1_olinked
# Store link id
scoreboard players operation .id ch1_olink = @s ch1_olink
# Scoreboard and count
execute as @e[scores={ch1_olink=1..}] if score @s ch1_olink = .id ch1_olink run function olink:private/ch1/find_count
