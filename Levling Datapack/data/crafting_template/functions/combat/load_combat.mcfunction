scoreboard objectives add silverfish_killed minecraft.killed:minecraft.silverfish
scoreboard objectives add endermites_killed minecraft.killed:minecraft.endermite

scoreboard objectives add slimes_killed minecraft.killed:minecraft.slime
scoreboard objectives add magma_cubes_killed minecraft.killed:minecraft.magma_cube

scoreboard objectives add spiders_killed minecraft.killed:minecraft.spider

scoreboard objectives add zombies_killed minecraft.killed:minecraft.zombie
scoreboard objectives add zombie_villagers_killed minecraft.killed:minecraft.zombie_villager

scoreboard objectives add skeletons_killed minecraft.killed:minecraft.skeleton

scoreboard objectives add creepers_killed minecraft.killed:minecraft.creeper

scoreboard objectives add husks_killed minecraft.killed:minecraft.husk
scoreboard objectives add drowned_killed minecraft.killed:minecraft.drowned

scoreboard objectives add strays_killed minecraft.killed:minecraft.stray

scoreboard objectives add phantoms_killed minecraft.killed:minecraft.phantom

scoreboard objectives add cave_spiders_killed minecraft.killed:minecraft.cave_spider

scoreboard objectives add pillagers_killed minecraft.killed:minecraft.pillager

scoreboard objectives add guardians_killed minecraft.killed:minecraft.guardian

scoreboard objectives add piglins_killed minecraft.killed:minecraft.piglin
scoreboard objectives add zombified_piglins_killed minecraft.killed:minecraft.zombified_piglin

scoreboard objectives add hoglins_killed minecraft.killed:minecraft.hoglin

scoreboard objectives add vindicators_killed minecraft.killed:minecraft.vindicator
scoreboard objectives add piglin_brutes_killed minecraft.killed:minecraft.piglin_brute

scoreboard objectives add ghasts_killed minecraft.killed:minecraft.ghast

scoreboard objectives add endermen_killed minecraft.killed:minecraft.enderman

scoreboard objectives add witches_killed minecraft.killed:minecraft.witch

scoreboard objectives add blazes_killed minecraft.killed:minecraft.blaze

scoreboard objectives add vexes_killed minecraft.killed:minecraft.vex

scoreboard objectives add wither_skeletons_killed minecraft.killed:minecraft.wither_skeleton


scoreboard objectives add evokers_killed minecraft.killed:minecraft.evoker

scoreboard objectives add iron_golems_killed minecraft.killed:minecraft.iron_golem

scoreboard objectives add ravagers_killed minecraft.killed:minecraft.ravager

scoreboard objectives add elder_gaurdians_killed minecraft.killed:minecraft.elder_guardian

scoreboard objectives add withers_killed minecraft.killed:minecraft.wither

scoreboard objectives add ender_dragons_killed minecraft.killed:minecraft.ender_dragon


scoreboard objectives add combat_level dummy 1
scoreboard objectives add combat_experience dummy 1
scoreboard objectives add last_combat_experience dummy 1
scoreboard objectives add combat_experience_difference dummy 1
scoreboard objectives add combat_experience_needed dummy 1

#bossbar add combat:combat {"text":"Combat","color":"dark_red"}
#bossbar set combat:combat color red
#bossbar set combat:combat visible false

#skills
scoreboard objectives add dropped_weapon dummy 0
scoreboard objectives add dropped_wood_sword minecraft.dropped:wooden_sword 0
scoreboard objectives add dropped_stone_sword minecraft.dropped:stone_sword 0
scoreboard objectives add dropped_iron_sword minecraft.dropped:iron_sword 0
scoreboard objectives add dropped_diamond_sword minecraft.dropped:diamond_sword 0
scoreboard objectives add dropped_netherite_sword minecraft.dropped:netherite_sword 0
scoreboard objectives add dropped_bow minecraft.dropped:bow 0
scoreboard objectives add dropped_trident minecraft.dropped:trident 0



execute as @a at @s run scoreboard players set @s base 120
execute as @a at @s run scoreboard players set @s result 100
execute as @a at @s run scoreboard players set @s divisor 100
execute as @a at @s run scoreboard players set @s times_run 0
execute as @a at @s run scoreboard players operation @s exponent = @s combat_level
execute as @a at @s if score @s exponent matches 2.. run function crafting_template:exponentiate_by_int
execute as @a at @s run scoreboard players operation @s combat_experience_needed = @s result

