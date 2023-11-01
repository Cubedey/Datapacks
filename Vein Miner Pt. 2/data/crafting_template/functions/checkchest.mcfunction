loot insert 72 64 -19 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute if block 72 64 -19 chest{Items:[{Slot:0b,Count:2b}]} positioned ~ ~ ~ run function crafting_template:mine2
