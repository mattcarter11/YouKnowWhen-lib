scoreboard objectives add eapproach dummy

scoreboard players set #-1 eapproach -1
scoreboard players set factor eapproach 100
scoreboard players operation facing_target eapproach = facing_target eapproach

function ebackoff:private/load
