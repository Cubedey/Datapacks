scoreboard players set @s dummy2 100 
execute if score @s currentp_increase >= @s dummy2 run scoreboard players add @s amount_given 1
execute if score @s currentp_increase >= @s dummy2 run scoreboard players remove @s currentp_increase 100
execute if score @s currentp_increase >= @s dummy2 run function crafting_template:get_extra_given

scoreboard players operation @s dummy = @s currentp_increase
scoreboard players set @s dummy3 10

scoreboard players operation @s dummy /= @s dummy3



execute if score @s currentp_increase < @s dummy2 if score @s times_since < @s dummy run scoreboard players add @s amount_given 1
execute if score @s currentp_increase < @s dummy2 if score @s times_since <= @s dummy3 run scoreboard players add @s times_since 1

execute if score @s currentp_increase < @s dummy2 if score @s times_since >= @s dummy3 run scoreboard players set @s times_since 0

#make level up reset times since