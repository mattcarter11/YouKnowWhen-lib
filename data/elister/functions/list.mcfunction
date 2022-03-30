scoreboard objectives remove eLister
scoreboard objectives add eLister dummy
scoreboard objectives setdisplay sidebar eLister

execute as @e run function elister:private/mtype

scoreboard players operation total-marker eLister = total eLister
scoreboard players operation total-marker eLister -= marker eLister
