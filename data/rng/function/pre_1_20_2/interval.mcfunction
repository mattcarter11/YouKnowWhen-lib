# Shift two previos values
scoreboard players operation #range rng = max rng
scoreboard players add #range rng 1
scoreboard players operation #range rng -= min rng

scoreboard players operation #m1 rng = #range rng
scoreboard players remove #m1 rng 1

function rng:pre_1_20_2/private/calc/range_lcg

scoreboard players operation out rng += min rng
