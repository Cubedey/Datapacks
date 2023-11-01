particle glow ~ ~ ~ 0 0 0 0 1
execute as @e[distance=..3,scores={FireWandShooter=0},type=player,limit=1,sort=nearest] at @s run function crafting_template:wands/lightningwandboom
execute as @e[distance=..3,type=!player,type=!arrow,type=!item,type=!fireball,type=!snowball,type=!egg,tag=!bomb,limit=1,sort=nearest] at @s run function crafting_template:wands/lightningwandboom
execute unless block ~ ~ ~ air run function crafting_template:wands/lightningwandboom
execute unless block ~ ~ ~ air positioned ^ ^ ^.5 run scoreboard players set @s FireWandShooter 0
execute if entity @s[scores={FireWandExploded=0}] if block ~ ~ ~ air positioned ^ ^ ^.5 run function crafting_template:wands/lightningwandshoot
