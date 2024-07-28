scoreboard objectives add rng dummy

# Pre 1.20.2
execute unless score #lcg rng matches ..0 unless score #lcg rng matches 1.. run function rng:reset_seed
#   RNG constants
scoreboard players set #lcg_k rng 1103515245
