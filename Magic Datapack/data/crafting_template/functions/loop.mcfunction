function crafting_template:beyonder/beyonderloop
function crafting_template:yonder/yonderloop
function crafting_template:blocksloop
execute as @a at @s anchored eyes if entity @s[scores={BreakUber=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",tag:{display:{Name:'{"text":"Über","color":"dark_purple","bold":true,"italic":true}'},Unbreakable:1b,Damage:10,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:0,UUID:[I;-1141646217,193283162,-1847936793,556873983],Slot:"mainhand"}]}}}] run function crafting_template:uber/pickraycast_loop
execute as @a at @s anchored eyes if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Yonder","color":"#39FF14","bold":true,"italic":true}'},Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:0,UUID:[I;1870163226,-1819259334,-1680860943,-2069702055],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;-173820873,386025585,-2055172128,253492036],Slot:"mainhand"}]}}}] run function crafting_template:yonder/axeraycast_loop
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{display:{Name:'{"text":"Yonder","color":"#39FF14","bold":true,"italic":true}'},Unbreakable:1b,CustomModelData:2,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:0,UUID:[I;1870163226,-1819259334,-1680860943,-2069702055],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;-173820873,386025585,-2055172128,253492036],Slot:"mainhand"}]}}]}] run function crafting_template:yonder/give_real_axe
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:netherite_axe",Slot:-106b,tag:{display:{Name:'{"text":"Yonder2","color":"#39FF14","bold":true,"italic":true}'},Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:0,UUID:[I;1870163226,-1819259334,-1680860943,-2069702055],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;-173820873,386025585,-2055172128,253492036],Slot:"mainhand"}]}}]}] run function crafting_template:yonder/give_carrot
execute at @e[type=item_frame,tag=altar,tag=beaconing] run function crafting_template:altar/raycast

execute as @e[tag=shronk,type=minecraft:zombie] at @s store result entity @e[type=minecraft:armor_stand,tag=shronk,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=shronk,type=armor_stand] at @s unless entity @e[type=zombie,tag=shronk,distance=0..1] run kill @s

execute as @e[type=zombie,tag=!not_shronk,sort=random] at @s run function crafting_template:shronk/shronkspawn

execute as @e[tag=shronk,type=zombie,scores={atk_cool=0}] at @s if entity @a[distance=0..10] run function crafting_template:shronk/shronkthrow
scoreboard players remove @e[tag=shronk,type=zombie,scores={atk_cool=1..}] atk_cool 1
execute as @e[tag=onion,tag=!not_rotated] at @s run function crafting_template:shronk/actualshronkthrow

execute as @a[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Fire Wand","color":"#FF4538","bold":true,"italic":false}'},CustomModelData:1}}}] at @s run kill @e[type=arrow,limit=1,sort=nearest]
execute as @a at @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Fire Wand","color":"#FF4538","bold":true,"italic":false}'},CustomModelData:1}}}] run scoreboard players set @s FireWandExploded 0
execute as @a at @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Fire Wand","color":"#FF4538","bold":true,"italic":false}'},CustomModelData:1}}}] run scoreboard players set @s FireWandShooter 1
execute as @a at @s anchored eyes if entity @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Fire Wand","color":"#FF4538","bold":true,"italic":false}'},CustomModelData:1}}}] run function crafting_template:wands/firewandshoot
execute as @a[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Lightning Wand","color":"#C7C124","bold":true,"italic":false}'},CustomModelData:2}}}] at @s run kill @e[type=arrow,limit=1,sort=nearest]
execute as @a at @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Lightning Wand","color":"#C7C124","bold":true,"italic":false}'},CustomModelData:2}}}] run scoreboard players set @s FireWandExploded 0
execute as @a at @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Lightning Wand","color":"#C7C124","bold":true,"italic":false}'},CustomModelData:2}}}] run scoreboard players set @s FireWandShooter 1
execute as @a at @s anchored eyes if entity @s[scores={BowUsed=1..},nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Lightning Wand","color":"#C7C124","bold":true,"italic":false}'},CustomModelData:2}}}] run function crafting_template:wands/lightningwandshoot

execute as @a[scores={Hasbackpack=0},nbt={SelectedItem:{id:"minecraft:globe_banner_pattern",Count:1b,tag:{CustomModelData:1}}}] at @s run function crafting_template:backpack/summonfirstminecart

execute as @a at @s if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}] run item replace entity @s armor.head with carrot_on_a_stick{CustomModelData:4}
execute as @a at @s if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}] run item replace entity @s weapon.mainhand with air



scoreboard players reset @a RightClick
scoreboard players reset @a BowUsed
scoreboard players reset @a Shifting