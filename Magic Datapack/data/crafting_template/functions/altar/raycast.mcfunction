particle witch ~ ~ ~ 0 0 0 0 25
execute positioned ~-0.99 ~-0.99 ~-0.99 as @e[dx=0] if entity @s[dx=0,type=item] run function crafting_template:altar/craft
execute positioned ^ ^ ^.5 run function crafting_template:altar/raycast