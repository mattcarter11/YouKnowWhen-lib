# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg rng *= #lcg_k rng
scoreboard players add #lcg rng 12345
scoreboard players operation out rng = #lcg rng
