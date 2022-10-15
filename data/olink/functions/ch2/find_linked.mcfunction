# Reset
tag @e[tag=ch2_olinked] remove ch2_olinked

# In link
execute if predicate olink:ch2/in_link run function olink:private/ch2/find_linked
