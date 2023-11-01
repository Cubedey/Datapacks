tellraw @a {"text":"Loaded Magical Datapack"}
scoreboard objectives add dummy dummy
scoreboard objectives remove RightClick 
scoreboard objectives remove DroppedBeyond
scoreboard objectives remove MultiMotionX 
scoreboard objectives remove MultiMotionY 
scoreboard objectives remove MultiMotionZ 
scoreboard objectives remove BreakUber 
scoreboard objectives remove Direction 
scoreboard objectives remove Repeat 
scoreboard objectives remove BreakYonder
scoreboard objectives remove Shifting
scoreboard objectives remove ShronkSpawned
scoreboard objectives remove Atk_cool
scoreboard objectives remove FireWandShooter
scoreboard objectives remove FireWandExploded
scoreboard objectives add RightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DroppedBeyond minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add BreakUber minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add BreakYonder minecraft.used:minecraft.netherite_axe
scoreboard objectives add Shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add BowUsed minecraft.used:bow
scoreboard objectives add Direction dummy
scoreboard objectives add RotationY dummy
scoreboard objectives add RotationX dummy
scoreboard objectives add Repeat dummy
scoreboard objectives add HasBeyond dummy
scoreboard objectives add MultiMotionX dummy
scoreboard objectives add MultiMotionY dummy
scoreboard objectives add MultiMotionZ dummy
scoreboard objectives add ShronkSpawned dummy
scoreboard objectives add atk_cool dummy
scoreboard objectives add coas dummy
scoreboard objectives add FireWandExploded dummy
scoreboard players set @a FireWandExploded 1
scoreboard objectives add FireWandShooter dummy
scoreboard players set @a FireWandShooter 0
scoreboard players add shronkcount ShronkSpawned 0 
scoreboard objectives add Hasbackpack dummy
scoreboard players set @a dummy 0
execute as @a at @s unless score @s Hasbackpack > @s dummy run scoreboard players set @s Hasbackpack 0
function crafting_template:repeat
