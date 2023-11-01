recipe take @s crafting_template:item6

advancement revoke @s only crafting_template:item6_adv

give @p item_frame{display:{Name:'{"text":"The Altar","color":"green","bold":true,"italic":true}',Lore:['{"text":"A magical table!"}']},CustomModelData:2,EntityTag:{Silent:1b,Tags:["altar"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:2}},Invulnerable:1b,Invisible:1b,Fixed:1b}} 1
clear @s minecraft:knowledge_book