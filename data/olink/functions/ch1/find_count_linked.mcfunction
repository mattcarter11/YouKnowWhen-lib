# Reset 
tag @e[tag=ch1_olinked] remove ch1_olinked
scoreboard players set .count ch1_olink 0

# In link
execute if predicate olink:ch1/in_link run function olink:private/ch1/find_count_linked