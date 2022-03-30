# Summary

Used to trigger functions when and where an entity dies. 

*mdd stands for Mob Death Drops*

# Usage / How it works

When a mob dies, it dropps a custom invisible item which runs the function `mmd:trigger` as @s and at @s and then is removed. The item also inherits the entity tags.

To do anything where the entity dies and 'as the entity', you need to place the functions it would run inside `mmd:trigger`.

____

**IMPORTNAT**: Apart from the *mmd* folder you also need the *vanilla* folder to keep the vanilla loot and the *minercaft* (only the loot_bales) to add the extra item used to detect the death. *minercaft* is also needed for running `mdd:private/tick` every tick.



