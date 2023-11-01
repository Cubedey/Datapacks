execute if score shronkcount ShronkSpawned matches 0 run summon zombie ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,CanPickUpLoot:0b,IsBaby:1b,CanBreakDoors:1b,Tags:["shronk"],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["shronk"],ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,tag:{CustomModelData:1}}]}],ArmorItems:[{id:"minecraft:slime_ball",Count:1b},{id:"minecraft:poisonous_potato",Count:1b},{},{id:"minecraft:polished_blackstone_button",Count:1b}],ArmorDropChances:[0.250F,1.000F,0.085F,0.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.armor,Base:0}]}
execute if score shronkcount ShronkSpawned matches 0 run tp ~ ~-256 ~

scoreboard players add @e[tag=shronk,type=zombie] atk_cool 0

tag @s add not_shronk

scoreboard players add shronkcount ShronkSpawned 1
execute if score shronkcount ShronkSpawned matches 20 run scoreboard players set shronkcount ShronkSpawned 0