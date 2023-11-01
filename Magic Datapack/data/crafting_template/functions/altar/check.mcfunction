fill ~ ~1 ~1 ~ ~1 ~-1 obsidian replace air
fill ~1 ~1 ~ ~-1 ~1 ~ obsidian replace air
fill ~1 ~1 ~1 ~-1 ~1 ~-1 emerald_block replace air
fill ~ ~2 ~2 ~ ~2 ~-2 obsidian replace air
fill ~2 ~2 ~ ~-2 ~2 ~ obsidian replace air
fill ~2 ~2 ~2 ~-2 ~2 ~-2 emerald_block replace air
fill ~ ~3 ~3 ~ ~3 ~-3 obsidian replace air
fill ~3 ~3 ~ ~-3 ~3 ~ obsidian replace air
fill ~3 ~3 ~3 ~-3 ~3 ~-3 emerald_block replace air
execute if blocks ~-1 ~-1 ~-1 ~1 ~-1 ~1 ~-1 ~1 ~-1 all run tag @s add beaconing
execute if blocks ~-2 ~-2 ~-2 ~2 ~-2 ~2 ~-2 ~2 ~-2 all run tag @s add beaconing
execute if blocks ~-3 ~-3 ~-3 ~3 ~-3 ~3 ~-3 ~3 ~-3 all run tag @s add beaconing
execute unless blocks ~-1 ~-1 ~-1 ~1 ~-1 ~1 ~-1 ~1 ~-1 all run tag @s remove beaconing
execute unless blocks ~-2 ~-2 ~-2 ~2 ~-2 ~2 ~-2 ~2 ~-2 all run tag @s remove beaconing
execute unless blocks ~-3 ~-3 ~-3 ~3 ~-3 ~3 ~-3 ~3 ~-3 all run tag @s remove beaconing
fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace obsidian
fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace emerald_block
fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace obsidian
fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace emerald_block
fill ~3 ~3 ~3 ~-3 ~3 ~-3 air replace obsidian
fill ~3 ~3 ~3 ~-3 ~3 ~-3 air replace emerald_block

