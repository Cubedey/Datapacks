scoreboard players reset @s Direction
execute store result score @s RotationY run data get entity @s Rotation[0]
execute store result score @s RotationX run data get entity @s Rotation[1]
clear @s #crafting_template:destroy
execute if entity @s[scores={RotationY=-135..-45}] run scoreboard players set @s Direction 1
execute if entity @s[scores={RotationY=45..135}] run scoreboard players set @s Direction 1
execute if entity @s[scores={RotationY=-315..-225}] run scoreboard players set @s Direction 1
execute if entity @s[scores={RotationY=225..315}] run scoreboard players set @s Direction 1
execute if entity @s[scores={RotationY=-45..45}] run scoreboard players set @s Direction 2
execute if entity @s[scores={RotationY=-360..-315}] run scoreboard players set @s Direction 2
execute if entity @s[scores={RotationY=-225..-135}] run scoreboard players set @s Direction 2
execute if entity @s[scores={RotationY=135..225}] run scoreboard players set @s Direction 2
execute if entity @s[scores={RotationX=80..90}] run scoreboard players set @s Direction 3
execute if entity @s[scores={RotationX=-90..-80}] run scoreboard players set @s Direction 3
execute if entity @s[scores={Direction=1}] run function crafting_template:axebreakx
execute if entity @s[scores={Direction=2}] run function crafting_template:axebreakz
execute if entity @s[scores={Direction=3}] run function crafting_template:axebreaky
