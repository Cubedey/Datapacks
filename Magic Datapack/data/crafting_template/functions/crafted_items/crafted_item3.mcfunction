recipe take @s crafting_template:item3

advancement revoke @s only crafting_template:item3_adv

give @p netherite_pickaxe{display:{Name:'{"text":"Über","color":"dark_purple","bold":true,"italic":true}'},Unbreakable:1b,Damage:10,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.1,Operation:0,UUID:[I;-1141646217,193283162,-1847936793,556873983],Slot:"mainhand"}]} 1
clear @s minecraft:knowledge_book