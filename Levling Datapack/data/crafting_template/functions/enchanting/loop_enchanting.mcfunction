#bossbar set enchanting:enchanting players @a


##scoreboard players set @s result 1


##scoreboard players set @s dummy 8
##scoreboard players operation @s result *= @s dummy
scoreboard players set @s result 0



execute unless score @s xp = @s last_xp if score @s xpedyet matches 0 run xp add @s -1


execute unless score @s xp = @s last_xp run scoreboard players operation @s result = @s xp
execute unless score @s xp = @s last_xp run scoreboard players operation @s result -= @s last_xp

##scoreboard players set @s bugdummy 0
##execute unless score @s result = @s dummy run tellraw @s [{"score":{"name":"@s","objective":"result"}}]
scoreboard players set @s dummy 0
scoreboard players set @s dummy2 -1
execute if score @s result < @s dummy run scoreboard players operation @s result *= @s dummy2

scoreboard players set @s inverse_exponent 2
scoreboard players operation @s root_num = @s result
scoreboard players set @s divisor_inv 1
scoreboard players set @s divisor 1
scoreboard players set @s root_difference 0
scoreboard players set @s times_run_inv 0
scoreboard players set @s last_root_difference 2147483647



execute unless score @s xp = @s last_xp run function crafting_template:root_by_int
execute unless score @s xp = @s last_xp if score @s xpedyet matches 0 run scoreboard players set @s result 0
execute unless score @s xp = @s last_xp if score @s xpedyet matches 0 run scoreboard players set @s xpedyet 1

##scoreboard players set @s bugdummy 0
##execute unless score @s result = @s bugdummy run tellraw @s [{"score":{"name":"@s","objective":"result"}}]
scoreboard players operation @s enchanting_experience += @s result


execute if score @s enchanting_experience >= @s enchanting_experience_needed run function crafting_template:enchanting/levelup_enchanting

scoreboard players operation @s enchanting_experience -= @s last_enchanting_experience
scoreboard players operation @s enchanting_experience_difference = @s enchanting_experience
scoreboard players operation @s enchanting_experience += @s last_enchanting_experience
#execute if score @s enchanting_experience_difference matches 1.. run function crafting_template:enchanting/enchanting_bossbar
#xecute if score @s tick = @s old_tick run bossbar set enchanting:enchanting visible false
execute unless score @s enchanting_experience_difference matches 0 run title @s actionbar [{"text":"Enchanting: +","color":"green"},{"score":{"name":"@s","objective":"enchanting_experience_difference"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"enchanting_experience"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"@s","objective":"enchanting_experience_needed"},"color":"yellow"},{"text":")","color":"yellow"},{"text":" Level: ","color":"green"},{"score":{"name":"@s","objective":"enchanting_level"},"color":"yellow"}]

execute unless score @s enchanting_experience >= @s enchanting_experience_needed run scoreboard players operation @s last_enchanting_experience = @s enchanting_experience
execute if score @s enchanting_experience >= @s enchanting_experience_needed run scoreboard players operation @s last_enchanting_experience = @s enchanting_experience_needed

scoreboard players operation @s last_xp = @s xp

function crafting_template:enchanting/enchanting_scoreboard_reset

