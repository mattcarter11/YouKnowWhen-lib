# Summary

Set any entity attributes using scoreboards (they are stacked on top of the default attributes). The attributes can go from -131.072 to 131.072. The value of the attribute must be scaled by 1000 (1.5 hp -> 150).

# Applying attributes

To set any attribute, you need to first need to set the value of each attribute in the scoreboard `attributes`. The score names are: `health`, `armor`, `armor_t`, `damage`, `attack_s`, `attack_k`, `knock_r`, `speed`. By default, they are set to 0, so each time you change an attribute, you need to set all the previous attributes so not to lose them. (There's a way to see the current attributes added by the system)

    scoreboard players set <score_name> attributes <value>

After all the scores are set, the entity who will be getting the attributes has to run the function `attribute:set_all`

    execute as @s run function attribute:set_all

# Reseting the attributes

To removes all the attributes added by the system to an entity, as the entity run the function `attribute:set_all`:

    execute as @s run function attribute:set_all

# Get the values of the attributes the system has added to an entity

To see/get/.. what attributes the system has added to an entity, you can check their socre on the scoreboard a_<score_name>.

    scoreboard players get @s a_<score_name>

To reset each one individualy, you need to set all the other attributes to their current value and then apply them.

# Applying/Reseting an attribute specificly

To do this, check the `attributes:private` folder. If you understand thow it works, it's possible to do this.

____

**IMPORTNAT**: Apart from the *attribute* folder you also need *minercaft* for loading the function `attribute:private/load`. You could also load it manually.