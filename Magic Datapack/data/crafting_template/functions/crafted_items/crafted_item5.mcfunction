recipe take @s crafting_template:item5

advancement revoke @s only crafting_template:item5_adv

give @p item_frame{display:{Name:'{"text":"Animal Farm","color":"red","bold":true,"italic":true}',Lore:['{"text":"Used to gain the loot of mobs standing above it!"}']},CustomModelData:1,EntityTag:{Silent:1b,Tags:["mobfarm"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1}},Invulnerable:1b,Invisible:1b,Fixed:1b}} 1
clear @s minecraft:knowledge_book