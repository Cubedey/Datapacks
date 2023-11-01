summon pig ~ ~-5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
scoreboard players operation @e[type=pig,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest] roman_numeral_num = @s dummy
execute as @e[type=pig,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest] run function crafting_template:to_roman_numeral
summon cow ~ ~-5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
scoreboard players operation @e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest] roman_numeral_num = @s dummy
scoreboard players add @e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest] roman_numeral_num 1
execute as @e[type=cow,distance=..6,limit=1,nbt={NoGravity:1b},sort=nearest] run function crafting_template:to_roman_numeral