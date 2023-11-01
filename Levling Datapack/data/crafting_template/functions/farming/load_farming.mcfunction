scoreboard objectives add farming_level dummy 1
scoreboard objectives add farming_experience dummy 1
scoreboard objectives add last_farming_experience dummy 1
scoreboard objectives add farming_experience_difference dummy 1
scoreboard objectives add farming_experience_needed dummy 1

scoreboard objectives add poppy_placed minecraft.used:poppy 
scoreboard objectives add poppy_mined minecraft.mined:poppy

scoreboard objectives add dandelion_placed minecraft.used:dandelion
scoreboard objectives add dandelion_mined minecraft.mined:dandelion

scoreboard objectives add peony_placed minecraft.used:peony
scoreboard objectives add peony_mined minecraft.mined:peony

scoreboard objectives add rose_bush_placed minecraft.used:rose_bush
scoreboard objectives add rose_bush_mined minecraft.mined:rose_bush

scoreboard objectives add sunflower_placed minecraft.used:sunflower
scoreboard objectives add sunflower_mined minecraft.mined:sunflower

scoreboard objectives add red_mushroom_placed minecraft.used:red_mushroom
scoreboard objectives add red_mushroom_mined minecraft.mined:red_mushroom

scoreboard objectives add brown_mushroom_placed minecraft.used:brown_mushroom
scoreboard objectives add brown_mushroom_mined minecraft.mined:brown_mushroom

scoreboard objectives add bamboo_placed minecraft.used:bamboo
scoreboard objectives add bamboo_mined minecraft.mined:bamboo

scoreboard objectives add azure_bluet_placed minecraft.used:azure_bluet
scoreboard objectives add azure_bluet_mined minecraft.mined:azure_bluet



scoreboard objectives add cornflower_placed minecraft.used:cornflower
scoreboard objectives add cornflower_mined minecraft.mined:cornflower

scoreboard objectives add blue_orchid_placed minecraft.used:blue_orchid
scoreboard objectives add blue_orchid_mined minecraft.mined:blue_orchid

scoreboard objectives add lily_of_the_valley_placed minecraft.used:lily_of_the_valley
scoreboard objectives add lily_of_the_valley_mined minecraft.mined:lily_of_the_valley

scoreboard objectives add lilac_placed minecraft.used:lilac
scoreboard objectives add lilac_mined minecraft.mined:lilac

scoreboard objectives add crimson_fungus_placed minecraft.used:crimson_fungus
scoreboard objectives add crimson_fungus_mined minecraft.mined:crimson_fungus

scoreboard objectives add warped_fungus_placed minecraft.used:warped_fungus
scoreboard objectives add warped_fungus_mined minecraft.mined:warped_fungus

scoreboard objectives add wheat_seeds_placed minecraft.used:wheat_seeds
scoreboard objectives add wheat_seeds_mined minecraft.mined:wheat

scoreboard objectives add carrot_placed minecraft.used:carrot
scoreboard objectives add carrot_mined minecraft.mined:carrots

scoreboard objectives add potato_placed minecraft.used:potato
scoreboard objectives add potato_mined minecraft.mined:potatoes

scoreboard objectives add cocoa_beans_placed minecraft.used:cocoa_beans
scoreboard objectives add cocoa_beans_mined minecraft.mined:cocoa

scoreboard objectives add beetroot_seeds_placed minecraft.used:beetroot_seeds
scoreboard objectives add beetroot_seeds_mined minecraft.mined:beetroots

scoreboard objectives add red_tulip_placed minecraft.used:red_tulip
scoreboard objectives add red_tulip_mined minecraft.mined:red_tulip

scoreboard objectives add pink_tulip_placed minecraft.used:pink_tulip
scoreboard objectives add pink_tulip_mined minecraft.mined:pink_tulip

scoreboard objectives add white_tulip_placed minecraft.used:white_tulip
scoreboard objectives add white_tulip_mined minecraft.mined:white_tulip

scoreboard objectives add orange_tulip_placed minecraft.used:orange_tulip
scoreboard objectives add orange_tulip_mined minecraft.mined:orange_tulip

scoreboard objectives add oxeye_daisy_placed minecraft.used:oxeye_daisy
scoreboard objectives add oxeye_daisy_mined minecraft.mined:oxeye_daisy

scoreboard objectives add kelp_placed minecraft.used:kelp
scoreboard objectives add kelp_mined minecraft.mined:kelp

scoreboard objectives add sugar_cane_placed minecraft.used:sugar_cane
scoreboard objectives add sugar_cane_mined minecraft.mined:sugar_cane

scoreboard objectives add cactus_placed minecraft.used:cactus
scoreboard objectives add cactus_mined minecraft.mined:cactus

scoreboard objectives add allium_placed minecraft.used:allium
scoreboard objectives add allium_mined minecraft.mined:allium

scoreboard objectives add fern_placed minecraft.used:fern
scoreboard objectives add fern_mined minecraft.mined:fern


scoreboard objectives add pumpkin_placed minecraft.used:pumpkin
scoreboard objectives add pumpkin_mined minecraft.mined:pumpkin


scoreboard objectives add large_fern_placed minecraft.used:large_fern
scoreboard objectives add large_fern_mined minecraft.mined:large_fern

scoreboard objectives add sweet_berries_placed minecraft.used:sweet_berries

scoreboard objectives add wither_rose_placed minecraft.used:wither_rose
scoreboard objectives add wither_rose_mined minecraft.mined:wither_rose





#bossbar add farming:farming {"text":"Farming","color":"dark_green"}
#bossbar set farming:farming color green
#bossbar set farming:farming players @a
#bossbar set farming:farming visible false



execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s farming_level
execute as @a at @s if score @s exponent matches 2.. run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s farming_experience_needed = @s result

execute as @a at @s run function crafting_template:farming/farming_counting

