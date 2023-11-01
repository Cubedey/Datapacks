kill @e[tag=VeinBlockLoc]
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["CheckedAlready"]}
execute positioned ~1 ~ ~ unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
execute positioned ~-1 ~ ~ unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
execute positioned ~ ~1 ~ unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
execute positioned ~ ~-1 ~ unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
execute positioned ~ ~ ~1 unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
execute positioned ~ ~ ~-1 unless entity @e[type=minecraft:armor_stand,distance=...5] run function crafting_template:checkchest
setblock ~ ~ ~ air destroy
kill @e[type=armor_stand,limit=1,distance=...5]