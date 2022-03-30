# Summary

Have up to two score based countdowns for each entity.

# Starting a countdown
There are two countdown scoreboards: `countdown` and `countdown2`. Whenever an entity gets it's score set. The countdown starts.

    scoreboard players set <target> countdown <value>

Keep in mind that if you run this command, the previous countdown will be overwritten by the new value.

# Doing something at a given value

To do something when the countdown is a specific value, you can use any minecraft function:

    execute as <target>[scores={countdown=<range>}] run function <path>
    execute as <target>[scores={countdown2=<range>}] run function <path>

    execute if score <target> countdown macthes <range> run function <path>
    execute if score <target> countdown2 macthes <range> run function <path>

    execute if score <target> countdown (<|<=|=|>=|>) <source> run function <path>
    execute if score <target> countdown2 (<|<=|=|>=|>) <source> run function <path>

____

**IMPORTNAT**: Apart from the *countdown* folder you also need *minercaft* for loading the function `countdown:private/load` and running `countdown:private/ticks` each tick. You could also load it manually and settup the ticking function to be run every tick.