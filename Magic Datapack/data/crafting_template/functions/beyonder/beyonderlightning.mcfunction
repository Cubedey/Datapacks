summon fireball ^ ^ ^0.1 {Tags:["new_multi_arrow","multi_kill_on_ground"],life:35s,damage:5.0d,ExplosionPower:2}

execute store result score @s MultiMotionX run data get entity @s Pos[0] 2000
execute store result score @s MultiMotionY run data get entity @s Pos[1] 2000
execute store result score @s MultiMotionZ run data get entity @s Pos[2] 2000

execute as @e[tag=new_multi_arrow] store result score @s MultiMotionX run data get entity @s Pos[0] 2000
execute as @e[tag=new_multi_arrow] store result score @s MultiMotionY run data get entity @s Pos[1] 2000
execute as @e[tag=new_multi_arrow] store result score @s MultiMotionZ run data get entity @s Pos[2] 2000

execute as @e[tag=new_multi_arrow] at @s run tp @s ~ ~1.3 ~

execute store result entity @e[tag=new_multi_arrow,limit=1,sort=nearest] Motion[0] double -0.01 run scoreboard players operation @s MultiMotionX -= @e[tag=new_multi_arrow,limit=1,sort=nearest] MultiMotionX
execute store result entity @e[tag=new_multi_arrow,limit=1,sort=nearest] Motion[1] double -0.01 run scoreboard players operation @s MultiMotionY -= @e[tag=new_multi_arrow,limit=1,sort=nearest] MultiMotionY
execute store result entity @e[tag=new_multi_arrow,limit=1,sort=nearest] Motion[2] double -0.01 run scoreboard players operation @s MultiMotionZ -= @e[tag=new_multi_arrow,limit=1,sort=nearest] MultiMotionZ

tag @e[tag=new_multi_arrow] remove new_multi_arrow
schedule function crafting_template:beyonder/killfireball 5s replace 
