#bossbar set farming:farming players @a
# maybe have extras count towards xp also make work for reg droppers
function crafting_template:farming/check_extra
#poppy
execute if score @s poppy_placed matches 0 if score @s poppy_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:poppy"}}] Item.Count
execute if score @s poppy_placed matches 0 if score @s poppy_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s poppy_placed matches 0 if score @s poppy_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:poppy"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s poppy_placed matches 0 if score @s poppy_mined matches 1.. run scoreboard players add @s farming_experience 1
execute if score @s poppy_placed matches 1.. if score @s poppy_mined matches 1.. run scoreboard players remove @s poppy_placed 1

#dandelion 
execute if score @s dandelion_placed matches 0 if score @s dandelion_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dandelion"}}] Item.Count
execute if score @s dandelion_placed matches 0 if score @s dandelion_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s dandelion_placed matches 0 if score @s dandelion_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dandelion"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s dandelion_placed matches 0 if score @s dandelion_mined matches 1.. run scoreboard players add @s farming_experience 1
execute if score @s dandelion_placed matches 1.. if score @s dandelion_mined matches 1.. run scoreboard players remove @s dandelion_placed 1
#peony
execute if score @s peony_placed matches 0 if score @s peony_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:peony"}}] Item.Count
execute if score @s peony_placed matches 0 if score @s peony_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s peony_placed matches 0 if score @s peony_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:peony"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s peony_placed matches 0 if score @s peony_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s peony_placed matches 1.. if score @s peony_mined matches 1.. run scoreboard players remove @s peony_placed 1
#rose_bush
execute if score @s rose_bush_placed matches 0 if score @s rose_bush_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:rose_bush"}}] Item.Count
execute if score @s rose_bush_placed matches 0 if score @s rose_bush_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s rose_bush_placed matches 0 if score @s rose_bush_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:rose_bush"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s rose_bush_placed matches 0 if score @s rose_bush_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s rose_bush_placed matches 1.. if score @s rose_bush_mined matches 1.. run scoreboard players remove @s rose_bush_placed 1
#sunflower
execute if score @s sunflower_placed matches 0 if score @s sunflower_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sunflower"}}] Item.Count
execute if score @s sunflower_placed matches 0 if score @s sunflower_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s sunflower_placed matches 0 if score @s sunflower_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sunflower"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s sunflower_placed matches 0 if score @s sunflower_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s sunflower_placed matches 1.. if score @s sunflower_mined matches 1.. run scoreboard players remove @s sunflower_placed 1
#red_mushroom
execute if score @s red_mushroom_placed matches 0 if score @s red_mushroom_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_mushroom"}}] Item.Count
execute if score @s red_mushroom_placed matches 0 if score @s red_mushroom_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s red_mushroom_placed matches 0 if score @s red_mushroom_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_mushroom"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s red_mushroom_placed matches 0 if score @s red_mushroom_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s red_mushroom_placed matches 1.. if score @s red_mushroom_mined matches 1.. run scoreboard players remove @s red_mushroom_placed 1
#brown_mushroom
execute if score @s brown_mushroom_placed matches 0 if score @s brown_mushroom_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:brown_mushroom"}}] Item.Count
execute if score @s brown_mushroom_placed matches 0 if score @s brown_mushroom_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s brown_mushroom_placed matches 0 if score @s brown_mushroom_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:brown_mushroom"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s brown_mushroom_placed matches 0 if score @s brown_mushroom_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s brown_mushroom_placed matches 1.. if score @s brown_mushroom_mined matches 1.. run scoreboard players remove @s brown_mushroom_placed 1
#bamboo
execute if score @s bamboo_placed matches 0 if score @s bamboo_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bamboo"}}] Item.Count
execute if score @s bamboo_placed matches 0 if score @s bamboo_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s bamboo_placed matches 0 if score @s bamboo_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bamboo"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s bamboo_placed matches 0 if score @s bamboo_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s bamboo_placed matches 1.. if score @s bamboo_mined matches 1.. run scoreboard players remove @s bamboo_placed 1
#melon_slice
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:melon_slice",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:melon_slice",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:melon_slice",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 2
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#azure_bluet
execute if score @s azure_bluet_placed matches 0 if score @s azure_bluet_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:azure_bluet"}}] Item.Count
execute if score @s azure_bluet_placed matches 0 if score @s azure_bluet_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s azure_bluet_placed matches 0 if score @s azure_bluet_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:azure_bluet"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s azure_bluet_placed matches 0 if score @s azure_bluet_mined matches 1.. run scoreboard players add @s farming_experience 2
execute if score @s azure_bluet_placed matches 1.. if score @s azure_bluet_mined matches 1.. run scoreboard players remove @s azure_bluet_placed 1
#carrot
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 2.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 2
scoreboard players remove @s count 1
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 if score @s dummy2 matches 1.. run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#potato
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 2.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 3
scoreboard players remove @s count 1
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 if score @s dummy2 matches 1.. run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#cornflower
execute if score @s cornflower_placed matches 0 if score @s cornflower_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cornflower"}}] Item.Count
execute if score @s cornflower_placed matches 0 if score @s cornflower_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s cornflower_placed matches 0 if score @s cornflower_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cornflower"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s cornflower_placed matches 0 if score @s cornflower_mined matches 1.. run scoreboard players add @s farming_experience 3
execute if score @s cornflower_placed matches 1.. if score @s cornflower_mined matches 1.. run scoreboard players remove @s cornflower_placed 1
#blue_orchid
execute if score @s blue_orchid_placed matches 0 if score @s blue_orchid_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_orchid"}}] Item.Count
execute if score @s blue_orchid_placed matches 0 if score @s blue_orchid_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s blue_orchid_placed matches 0 if score @s blue_orchid_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_orchid"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s blue_orchid_placed matches 0 if score @s blue_orchid_mined matches 1.. run scoreboard players add @s farming_experience 3
execute if score @s blue_orchid_placed matches 1.. if score @s blue_orchid_mined matches 1.. run scoreboard players remove @s blue_orchid_placed 1
#lily_of_the_valley
execute if score @s lily_of_the_valley_placed matches 0 if score @s lily_of_the_valley_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lily_of_the_valley"}}] Item.Count
execute if score @s lily_of_the_valley_placed matches 0 if score @s lily_of_the_valley_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s lily_of_the_valley_placed matches 0 if score @s lily_of_the_valley_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lily_of_the_valley"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s lily_of_the_valley_placed matches 0 if score @s lily_of_the_valley_mined matches 1.. run scoreboard players add @s farming_experience 3
execute if score @s lily_of_the_valley_placed matches 1.. if score @s lily_of_the_valley_mined matches 1.. run scoreboard players remove @s lily_of_the_valley_placed 1
#lilac
execute if score @s lilac_placed matches 0 if score @s lilac_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lilac"}}] Item.Count
execute if score @s lilac_placed matches 0 if score @s lilac_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s lilac_placed matches 0 if score @s lilac_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lilac"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s lilac_placed matches 0 if score @s lilac_mined matches 1.. run scoreboard players add @s farming_experience 3
execute if score @s lilac_placed matches 1.. if score @s lilac_mined matches 1.. run scoreboard players remove @s lilac_placed 1
#crimson_fungus
execute if score @s crimson_fungus_placed matches 0 if score @s crimson_fungus_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crimson_fungus"}}] Item.Count
execute if score @s crimson_fungus_placed matches 0 if score @s crimson_fungus_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s crimson_fungus_placed matches 0 if score @s crimson_fungus_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crimson_fungus"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s crimson_fungus_placed matches 0 if score @s crimson_fungus_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s crimson_fungus_placed matches 1.. if score @s crimson_fungus_mined matches 1.. run scoreboard players remove @s crimson_fungus_placed 1
#warped_fungus
execute if score @s warped_fungus_placed matches 0 if score @s warped_fungus_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:warped_fungus"}}] Item.Count
execute if score @s warped_fungus_placed matches 0 if score @s warped_fungus_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s warped_fungus_placed matches 0 if score @s warped_fungus_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:warped_fungus"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s warped_fungus_placed matches 0 if score @s warped_fungus_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s warped_fungus_placed matches 1.. if score @s warped_fungus_mined matches 1.. run scoreboard players remove @s warped_fungus_placed 1
#wheat_seeds
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 2.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 4
scoreboard players remove @s count 1
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 if score @s dummy2 matches 1.. run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#cocoa_beans
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 2.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 4
scoreboard players remove @s count 1
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 if score @s dummy2 matches 1.. run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#beetroot_seeds
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 2.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 4
scoreboard players remove @s count 1
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 if score @s dummy2 matches 1.. run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#red_tulip
execute if score @s red_tulip_placed matches 0 if score @s red_tulip_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_tulip"}}] Item.Count
execute if score @s red_tulip_placed matches 0 if score @s red_tulip_placed matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s red_tulip_placed matches 0 if score @s red_tulip_placed matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_tulip"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s red_tulip_placed matches 0 if score @s red_tulip_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s red_tulip_placed matches 1.. if score @s red_tulip_mined matches 1.. run scoreboard players remove @s red_tulip_placed 1
#pink_tulip
execute if score @s pink_tulip_placed matches 0 if score @s pink_tulip_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pink_tulip"}}] Item.Count
execute if score @s pink_tulip_placed matches 0 if score @s pink_tulip_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s pink_tulip_placed matches 0 if score @s pink_tulip_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pink_tulip"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s pink_tulip_placed matches 0 if score @s pink_tulip_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s pink_tulip_placed matches 1.. if score @s pink_tulip_mined matches 1.. run scoreboard players remove @s pink_tulip_placed 1
#white_tulip
execute if score @s white_tulip_placed matches 0 if score @s white_tulip_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_tulip"}}] Item.Count
execute if score @s white_tulip_placed matches 0 if score @s white_tulip_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s white_tulip_placed matches 0 if score @s white_tulip_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_tulip"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s white_tulip_placed matches 0 if score @s white_tulip_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s white_tulip_placed matches 1.. if score @s white_tulip_mined matches 1.. run scoreboard players remove @s white_tulip_placed 1
#orange_tulip
execute if score @s orange_tulip_placed matches 0 if score @s orange_tulip_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_tulip"}}] Item.Count
execute if score @s orange_tulip_placed matches 0 if score @s orange_tulip_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s orange_tulip_placed matches 0 if score @s orange_tulip_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_tulip"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s orange_tulip_placed matches 0 if score @s orange_tulip_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s orange_tulip_placed matches 1.. if score @s orange_tulip_mined matches 1.. run scoreboard players remove @s orange_tulip_placed 1
#oxeye_daisy
execute if score @s oxeye_daisy_placed matches 0 if score @s oxeye_daisy_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oxeye_daisy"}}] Item.Count
execute if score @s oxeye_daisy_placed matches 0 if score @s oxeye_daisy_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s oxeye_daisy_placed matches 0 if score @s oxeye_daisy_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oxeye_daisy"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s oxeye_daisy_placed matches 0 if score @s oxeye_daisy_mined matches 1.. run scoreboard players add @s farming_experience 4
execute if score @s oxeye_daisy_placed matches 1.. if score @s oxeye_daisy_mined matches 1.. run scoreboard players remove @s oxeye_daisy_placed 1
#kelp
execute if score @s kelp_placed matches 0 if score @s kelp_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:kelp"}}] Item.Count
execute if score @s kelp_placed matches 0 if score @s kelp_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s kelp_placed matches 0 if score @s kelp_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:kelp"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s kelp_placed matches 0 if score @s kelp_mined matches 1.. run scoreboard players add @s farming_experience 5
execute if score @s kelp_placed matches 1.. if score @s kelp_mined matches 1.. run scoreboard players remove @s kelp_placed 1
#sugar_cane
execute if score @s sugar_cane_placed matches 0 if score @s sugar_cane_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sugar_cane"}}] Item.Count
execute if score @s sugar_cane_placed matches 0 if score @s sugar_cane_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s sugar_cane_placed matches 0 if score @s sugar_cane_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:sugar_cane"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s sugar_cane_placed matches 0 if score @s sugar_cane_mined matches 1.. run scoreboard players add @s farming_experience 5
execute if score @s sugar_cane_placed matches 1.. if score @s sugar_cane_mined matches 1.. run scoreboard players remove @s sugar_cane_placed 1
#cactus
execute if score @s cactus_placed matches 0 if score @s cactus_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cactus"}}] Item.Count
execute if score @s cactus_placed matches 0 if score @s cactus_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s cactus_placed matches 0 if score @s cactus_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cactus"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s cactus_placed matches 0 if score @s cactus_mined matches 1.. run scoreboard players add @s farming_experience 5
execute if score @s cactus_placed matches 1.. if score @s cactus_mined matches 1.. run scoreboard players remove @s cactus_placed 1
#allium
execute if score @s allium_placed matches 0 if score @s allium_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:allium"}}] Item.Count
execute if score @s allium_placed matches 0 if score @s allium_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s allium_placed matches 0 if score @s allium_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:allium"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s allium_placed matches 0 if score @s allium_mined matches 1.. run scoreboard players add @s farming_experience 5
execute if score @s allium_placed matches 1.. if score @s allium_mined matches 1.. run scoreboard players remove @s allium_placed 1
#fern
execute if score @s fern_placed matches 0 if score @s fern_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:fern"}}] Item.Count
execute if score @s fern_placed matches 0 if score @s fern_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s fern_placed matches 0 if score @s fern_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:fern"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s fern_placed matches 0 if score @s fern_mined matches 1.. run scoreboard players add @s farming_experience 5
execute if score @s fern_placed matches 1.. if score @s fern_mined matches 1.. run scoreboard players remove @s fern_placed 1

#pumpkin
execute if score @s pumpkin_placed matches 0 if score @s pumpkin_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pumpkin"}}] Item.Count
execute if score @s pumpkin_placed matches 0 if score @s pumpkin_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s pumpkin_placed matches 0 if score @s pumpkin_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pumpkin"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s pumpkin_placed matches 0 if score @s pumpkin_mined matches 1.. run scoreboard players add @s farming_experience 8
execute if score @s pumpkin_placed matches 1.. if score @s pumpkin_mined matches 1.. run scoreboard players remove @s pumpkin_placed 1

#large_fern
execute if score @s large_fern_placed matches 0 if score @s large_fern_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:large_fern"}}] Item.Count
execute if score @s large_fern_placed matches 0 if score @s large_fern_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s large_fern_placed matches 0 if score @s large_fern_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:large_fern"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s large_fern_placed matches 0 if score @s large_fern_mined matches 1.. run scoreboard players add @s farming_experience 10
execute if score @s large_fern_placed matches 1.. if score @s large_fern_mined matches 1.. run scoreboard players remove @s large_fern_placed 1
#sweet_berries !

execute if score @s sweet_berries_placed matches 1.. run scoreboard players add @s farming_experience 10

execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 1.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 10
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#wheat
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 1.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 10
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#beetroot
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 1.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 12
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#apple
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 1.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 15
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#poisonous_potato
execute store result score @s dummy run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] Item.Count
scoreboard players operation @s dummy += @s amount_given 
execute if score @s dummy matches 1.. store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] Item.Count
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run data merge entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] {Item:{tag:{PickedUp:2}}}
scoreboard players set @s dummy2 50
scoreboard players operation @s dummy2 *= @s count
execute if score @s dummy matches 1 run scoreboard players operation @s farming_experience += @s dummy2
scoreboard players set @s dummy 0
#wither_rose

execute if score @s wither_rose_placed matches 0 if score @s wither_rose_mined matches 1.. store result score @s dummy run data get entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:wither_rose"}}] Item.Count
execute if score @s wither_rose_placed matches 0 if score @s wither_rose_mined matches 1.. run scoreboard players operation @s dummy += @s amount_given 
execute if score @s wither_rose_placed matches 0 if score @s wither_rose_mined matches 1.. store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:wither_rose"}}] Item.Count int 1 run scoreboard players get @s dummy
scoreboard players set @s dummy 0
execute if score @s wither_rose_placed matches 0 if score @s wither_rose_mined matches 1.. run scoreboard players add @s farming_experience 600
execute if score @s wither_rose_placed matches 1.. if score @s wither_rose_mined matches 1.. run scoreboard players remove @s wither_rose_placed 1





#farming xp only counts on pickup




execute run execute if score @s farming_experience >= @s farming_experience_needed run function crafting_template:farming/levelup_farming


execute run scoreboard players operation @s farming_experience -= @s last_farming_experience
execute run scoreboard players operation @s farming_experience_difference = @s farming_experience
execute run scoreboard players operation @s farming_experience += @s last_farming_experience

execute unless score @s farming_experience_difference matches 0 run title @s actionbar [{"text":"Farming: +","color":"dark_green"},{"score":{"name":"@s","objective":"farming_experience_difference"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"farming_experience"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"@s","objective":"farming_experience_needed"},"color":"yellow"},{"text":")","color":"yellow"},{"text":" Level: ","color":"dark_green"},{"score":{"name":"@s","objective":"farming_level"},"color":"yellow"}]
#execute if score @s farming_experience_difference matches 1.. run function crafting_template:farming/farming_bossbar
#execute if score @s tick = @s old_tick run bossbar set farming:farming visible false
execute unless score @s farming_experience >= @s farming_experience_needed run scoreboard players operation @s last_farming_experience = @s farming_experience
execute if score @s farming_experience >= @s farming_experience_needed run scoreboard players operation @s last_farming_experience = @s farming_experience_needed


function crafting_template:farming/farming_counting
function crafting_template:farming/farming_scoreboard_reset

