particle happy_villager ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ air run scoreboard players set @s BreakUber 0
execute unless block ~ ~ ~ air run clear @s #crafting_template:destroy
execute unless block ~ ~ ~ air positioned ^ ^ ^-1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy

execute if entity @s[scores={BreakUber=1..}] if block ~ ~ ~ air positioned ^ ^ ^.5 run function crafting_template:uber/pickraycast_loop
