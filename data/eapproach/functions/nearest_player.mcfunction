tag @p add ebackoff_target

scoreboard players operation factor eapproach *= #-1 eapproach
scoreboard players operation factor ebackoff = factor eapproach
scoreboard players operation facing_target ebackoff = facing_target eapproach
scoreboard players set factor eapproach 100

function ebackoff:from_target