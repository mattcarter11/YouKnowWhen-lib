scoreboard objectives add ebackoff dummy

scoreboard players set factor ebackoff 100
scoreboard players operation facing_target ebackoff = facing_target ebackoff
scoreboard players set entity_shifts ebackoff 1