execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run loot give @p kill @s
execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 2 1 true

execute if block ~ ~ ~ air positioned ^ ^ ^.5 run function crafting_template:beyonder/beyonderraycast_loop
