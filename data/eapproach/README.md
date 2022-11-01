# Summary
A library for making entities (except players) approach a target (a.k. point in space) in the XZ axes without falling off edges (not 100% of the times).

# Approaching
This library simply inverts the funcitonality of the *ebackoff* library. So all the explanations in [ebackoff README](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/ebackoff)
are equivalent here by replacing the word *ebackoff* with *eapproach*:
 - Function target: `ebackoff:from_target` -> `eaproach:target`
 - Function nearest player: `ebackoff:from_nearest_player` -> `eaproach:nearest_player`
 - Movment factor: `factor ebackoff` -> `factor eaproach`
 - Facing target flag: `facing_target ebackoff` -> `facing_target eaproach`
 - Target tag: `ebackoff_target` -> `eaproach_target`

# Example
## Cat follow player
Let's make cats, even if untamed, follow the the player if they are too far away

    # tick.mcfunction
    scoreboard players set facing_target eaproach 1
    execute as @e[type=cat] at @s if entity @p[distance=4..15] run function eaproach:nearest_player

*You can find this examples under the `eblackoff:examples` folder*

# Other
**IMPORTNAT**: Apart from the *eapproach* folder you also need *ebackoff*, since this lib inverts the funcitonality of *ebackoff*. You also need *minercaft* for loading the function `eapproach:private/load`. You could also load it manually.

