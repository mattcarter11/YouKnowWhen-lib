# Summary

A datapack with a bunch of libraries/tools for standarizing basic functionalities a code/map maker can use. Inside each subforder you can find a README with intstructions on how to use them. These libraries are:

## Numeric libs
 - [countdown](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/countdown) Have up to two score based countdowns for each entity.
 - [rng](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/rng) Generates a random value betwen a min and max range.
 - [elister](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/elister) List usually used entities when doing commands/map making.

## Entity motion libs
 - [ebackoff](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/ebackoff) A library for making entities backoff from a target (point in space) in the XZ axes
 - [eapproach](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/eapproach) A library for making entities beapproach a target (point in space) in the XZ axes
 - [launch](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/launch) A library for launching/throwing entities arround based on a vector.
*This libs don't work on players*

## Entity attriute libs
 - [attribute](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/attribute) Set any entity attributes using scoreboards.
 - [damage](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/damage) A library to apply custom damage to entities.
    - By default takes into account: *damage reduction of armor, armor_toughness and resistance effect, game difficulty*
    - After damage is applyed, custom functions can be run.

## Entity other libs
 - [mdd](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/mdd) Used to do trigger functions when and where an entity dies. 
 - [olink](https://github.com/mattcarter11/YouKnowWhen-lib/tree/main/data/olink) A datapack for linking entities. 
    - Each entity can conccurently have up to two links, each divided into it's channel.

The libraries *launch, olink, rng* are based on Cloud Wolf implementations, the *damage* lib is based on AESTD and the *ebackoff* lib is based on FlanDere Pillager Tweaks.

# Other usefull libs

 - [mrcd](https://github.com/K-bai/Minecraft-Ray-Collision-Detector) Super precise raycast system in vanilla minecraft with minimal command cost.
 - [AESTD](https://github.com/Aeldrion/AESTD) tility data pack for Minecraft designed to help command learners and advanced command.
 - [Score-Based-Damage](https://github.com/ErrorCraft/Score-Based-Damage) This is a data pack that allows you to damage and heal players based on a score.
 - [Minecraft-Random](https://github.com/Aeldrion/Minecraft-Random) Adds functions for random number generation and randomness-based predicates.