# Reset
tag @e[tag=ch2_olinked] remove ch2_olinked
# Store link id
scoreboard players operation .id ch2_olink = @s ch2_olink
# Scoreboard and count
execute as @e[scores={ch2_olink=1..}] if score @s ch2_olink = .id ch2_olink run tag @s add ch2_olinked
