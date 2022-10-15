# Reset
tag @e[tag=ch2_olinked_ch1] remove ch2_olinked_ch1

# In link
execute if predicate olink:ch2/in_link run function olink:private/ch2/find_crosslinked_ch1
