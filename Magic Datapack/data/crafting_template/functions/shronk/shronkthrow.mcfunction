playsound minecraft:block.slime_block.place block @a
execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["newArrow"],CustomModelData:1}
execute as @e[type=snowball,tag=newArrow] run data modify entity @s Motion set from entity @s Pos
execute store result score #tmpY coas as @e[type=snowball,tag=newArrow,limit=1] run data get entity @s Pos[1] 100
execute anchored eyes run tp @e[type=snowball,tag=newArrow] ^ ^ ^1
execute store result entity @e[type=snowball,tag=newArrow,limit=1] Motion[1] double 0.01 run scoreboard players get #tmpY coas
tag @e[type=snowball,tag=newArrow] remove newArrow
scoreboard players set @s coas 0

scoreboard players set @s atk_cool 1