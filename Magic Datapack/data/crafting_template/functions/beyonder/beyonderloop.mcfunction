execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Beyonder","color":"gold"}',Lore:['{"text":"A Sword From Beyond.","bold":true}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-207520915,-2065546049,-1222705303,-329290337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1410426886,-929740351,-2109006608,1096129165],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:.5,Operation:0,UUID:[I;-2060118123,-35109728,-1201907188,933509828],Slot:"mainhand"}]}}}] run effect give @s minecraft:resistance 5 2
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Beyonder","color":"gold"}',Lore:['{"text":"A Sword From Beyond.","bold":true}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-207520915,-2065546049,-1222705303,-329290337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1410426886,-929740351,-2109006608,1096129165],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:.5,Operation:0,UUID:[I;-2060118123,-35109728,-1201907188,933509828],Slot:"mainhand"}]}}}] run effect give @s minecraft:saturation 5 2
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Beyonder","color":"gold"}',Lore:['{"text":"A Sword From Beyond.","bold":true}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-207520915,-2065546049,-1222705303,-329290337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1410426886,-929740351,-2109006608,1096129165],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:.5,Operation:0,UUID:[I;-2060118123,-35109728,-1201907188,933509828],Slot:"mainhand"}]}}}] run effect give @s minecraft:fire_resistance 5 2
execute as @a at @s if entity @s[scores={RightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Beyonder","color":"gold"}',Lore:['{"text":"A Sword From Beyond.","bold":true}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-207520915,-2065546049,-1222705303,-329290337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1410426886,-929740351,-2109006608,1096129165],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:.5,Operation:0,UUID:[I;-2060118123,-35109728,-1201907188,933509828],Slot:"mainhand"}]}}}] run function crafting_template:beyonder/beyonderlightning
execute as @a at @s if entity @s[scores={DroppedBeyond=1..,HasBeyond=1}] run function crafting_template:beyonder/beyonderfireball
scoreboard players reset @a HasBeyond
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Beyonder","color":"gold"}',Lore:['{"text":"A Sword From Beyond.","bold":true}']},Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;-207520915,-2065546049,-1222705303,-329290337],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1410426886,-929740351,-2109006608,1096129165],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:.5,Operation:0,UUID:[I;-2060118123,-35109728,-1201907188,933509828],Slot:"mainhand"}]}}}] run scoreboard players set @s HasBeyond 1
scoreboard players reset @a DroppedBeyond
