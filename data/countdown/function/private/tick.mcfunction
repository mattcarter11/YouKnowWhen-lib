# reset
scoreboard players reset @e[scores={countdown=0}] countdown
scoreboard players reset @e[scores={countdown2=0}] countdown2

# countdown
scoreboard players remove @e[scores={countdown=1..}] countdown 1
scoreboard players remove @e[scores={countdown2=1..}] countdown2 1
