# Reset
tag @e[tag=ch1_olinked_ch2] remove ch1_olinked_ch2

# In link
execute if predicate olink:ch1/in_link run function olink:private/ch1/find_crosslinked_ch2
