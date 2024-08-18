execute if score min rng = max rng run return run scoreboard players operation out rng = min rng

execute store result storage rng min int 1 run scoreboard players get min rng
execute store result storage rng max int 1 run scoreboard players get max rng
function rng:minterval with storage minecraft:rng