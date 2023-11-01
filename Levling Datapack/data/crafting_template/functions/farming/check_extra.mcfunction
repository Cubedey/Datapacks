#bossbar set farming:farming players @a
#need to add count
#find way to have products and plantables count for one item plant


scoreboard players operation @s times_since = @s times_since_extra_farming

scoreboard players set @s dummy 8
scoreboard players operation @s dummy *= @s farming_level

scoreboard players operation @s currentp_increase = @s dummy

scoreboard players set @s amount_given 0
scoreboard players set @s dummy 0
#poppy
execute if score @s poppy_placed matches 0 if score @s poppy_mined matches 1.. run function crafting_template:get_extra_given
#dandelion !
execute if score @s dandelion_placed matches 0 if score @s dandelion_mined matches 1.. run function crafting_template:get_extra_given
#peony
execute if score @s peony_placed matches 0 if score @s peony_mined matches 1.. run function crafting_template:get_extra_given
#rose_bush
execute if score @s rose_bush_placed matches 0 if score @s rose_bush_mined matches 1.. run function crafting_template:get_extra_given
#sunflower
execute if score @s sunflower_placed matches 0 if score @s sunflower_mined matches 1.. run function crafting_template:get_extra_given
#red_mushroom
execute if score @s red_mushroom_placed matches 0 if score @s red_mushroom_mined matches 1.. run function crafting_template:get_extra_given
#brown_mushroom
execute if score @s brown_mushroom_placed matches 0 if score @s brown_mushroom_mined matches 1.. run function crafting_template:get_extra_given
#bamboo
execute if score @s bamboo_placed matches 0 if score @s bamboo_mined matches 1.. run function crafting_template:get_extra_given
#melon_slice
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:melon_slice",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#azure_bluet
execute if score @s azure_bluet_placed matches 0 if score @s azure_bluet_mined matches 1.. run function crafting_template:get_extra_given
#carrot
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:carrot",tag:{PickedUp:1}}}] Item.Count
#execute if score @s count matches 1.. run tellraw @s {"score":{"name":"@s","objective": "count"}}

execute if score @s count matches 2.. run function crafting_template:get_extra_given
scoreboard players set @s count 0
#potato
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:potato",tag:{PickedUp:1}}}] Item.Count
#execute if score @s count matches 1.. run tellraw @s {"score":{"name":"@s","objective": "count"}}

execute if score @s count matches 2.. run function crafting_template:get_extra_given
scoreboard players set @s count 0
#cornflower
execute if score @s cornflower_placed matches 0 if score @s cornflower_mined matches 1.. run function crafting_template:get_extra_given
#blue_orchid
execute if score @s blue_orchid_placed matches 0 if score @s blue_orchid_mined matches 1.. run function crafting_template:get_extra_given
#lily_of_the_valley
execute if score @s lily_of_the_valley_placed matches 0 if score @s lily_of_the_valley_mined matches 1.. run function crafting_template:get_extra_given
#lilac
execute if score @s lilac_placed matches 0 if score @s lilac_mined matches 1.. run function crafting_template:get_extra_given
#crimson_fungus
execute if score @s crimson_fungus_placed matches 0 if score @s crimson_fungus_mined matches 1.. run function crafting_template:get_extra_given
#warped_fungus
execute if score @s warped_fungus_placed matches 0 if score @s warped_fungus_mined matches 1.. run function crafting_template:get_extra_given
#wheat_seeds
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat_seeds",tag:{PickedUp:1}}}] Item.Count
#execute if score @s count matches 1.. run tellraw @s {"score":{"name":"@s","objective": "count"}}

execute if score @s count matches 2.. run function crafting_template:get_extra_given
scoreboard players set @s count 0
#cocoa_beans
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:cocoa_beans",tag:{PickedUp:1}}}] Item.Count
#execute if score @s count matches 1.. run tellraw @s {"score":{"name":"@s","objective": "count"}}

execute if score @s count matches 2.. run function crafting_template:get_extra_given
scoreboard players set @s count 0
#beetroot_seeds
execute store result score @s count run data get entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{PickedUp:1}}}] Item.Count
#execute if score @s count matches 1.. run tellraw @s {"score":{"name":"@s","objective": "count"}}

execute if score @s count matches 2.. run function crafting_template:get_extra_given
scoreboard players set @s count 0
#red_tulip
execute if score @s red_tulip_placed matches 0 if score @s red_tulip_mined matches 1.. run function crafting_template:get_extra_given
#pink_tulip
execute if score @s pink_tulip_placed matches 0 if score @s pink_tulip_mined matches 1.. run function crafting_template:get_extra_given
#white_tulip
execute if score @s white_tulip_placed matches 0 if score @s white_tulip_mined matches 1.. run function crafting_template:get_extra_given
#orange_tulip
execute if score @s orange_tulip_placed matches 0 if score @s orange_tulip_mined matches 1.. run function crafting_template:get_extra_given
#oxeye_daisy


execute if score @s oxeye_daisy_placed matches 0 if score @s oxeye_daisy_mined matches 1.. run function crafting_template:get_extra_given
#kelp
execute if score @s kelp_placed matches 0 if score @s kelp_mined matches 1.. run function crafting_template:get_extra_given
#sugar_cane
execute if score @s sugar_cane_placed matches 0 if score @s sugar_cane_mined matches 1.. run function crafting_template:get_extra_given
#cactus
execute if score @s cactus_placed matches 0 if score @s cactus_mined matches 1.. run function crafting_template:get_extra_given
#allium
execute if score @s allium_placed matches 0 if score @s allium_mined matches 1.. run function crafting_template:get_extra_given
#fern
execute if score @s fern_placed matches 0 if score @s fern_mined matches 1.. run function crafting_template:get_extra_given
#pumpkin
execute if score @s pumpkin_placed matches 0 if score @s pumpkin_mined matches 1.. run function crafting_template:get_extra_given

#large_fern
execute if score @s large_fern_placed matches 0 if score @s large_fern_mined matches 1.. run function crafting_template:get_extra_given
#sweet_berries

execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:sweet_berries",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#wheat
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:wheat",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#beetroot
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:beetroot",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#apple
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:apple",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#poisonous_potato
execute if entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{id:"minecraft:poisonous_potato",tag:{PickedUp:1}}}] run scoreboard players set @s dummy 1
execute if score @s dummy matches 1 run function crafting_template:get_extra_given
scoreboard players set @s dummy 0
#wither_rose
execute if score @s wither_rose_placed matches 0 if score @s wither_rose_mined matches 1.. run function crafting_template:get_extra_given



scoreboard players operation @s times_since_extra_farming = @s times_since





