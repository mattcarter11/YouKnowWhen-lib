execute as @e[type=sheep] at @s if entity @e[type=wolf,distance=..10,limit=1] run function ebackoff:examples/wolf_vs_sheep/run_away