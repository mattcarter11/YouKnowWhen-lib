# scoreboard objectives remove launch
scoreboard objectives add launch dummy

scoreboard players operation max_value launch = max_value launch
scoreboard players operation reset_factor_on_launch launch = reset_factor_on_launch launch
execute if score reset_factor_on_launch launch matches 1 run scoreboard players set factor launch 1