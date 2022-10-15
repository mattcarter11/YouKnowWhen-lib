# Reset
scoreboard players set .count ch2_olink 0

# In link
execute if predicate olink:ch2/in_link run function olink:private/ch2/count_linked
