# Reset 
tag @e[tag=ch2_olinked] remove ch2_olinked
scoreboard players set .count ch2_olink 0

# In link
execute if predicate olink:ch2/in_link run function olink:private/ch2/find_count_linked
