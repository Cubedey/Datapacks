particle damage_indicator ~ ~ ~ 0 0 0 0 1
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run loot insert ~1 ~-1 ~1 kill @s
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 10 1 true
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @s[dx=0,type=!minecraft:item_frame] if block ~ ~ ~ air positioned ^ ^ ^.5 run function crafting_template:mobfarm/raycast
