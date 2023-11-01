execute at @e[tag=VeinBlockLoc] if block ~ ~ ~ air run function crafting_template:mine
execute as @a at @s anchored eyes if entity @s[scores={Shifting=1..}] run function crafting_template:raycast_loop
scoreboard players reset @a Shifting
kill @e[type=armor_stand,tag=CheckedAlready]