kill @e[tag=VeinBlockLoc] 
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["VeinBlockLoc"]}
setblock 72 64 -19 chest
loot insert 72 64 -19 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
loot replace entity @e[tag=VeinBlockLoc] armor.head mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
loot give @s mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}


