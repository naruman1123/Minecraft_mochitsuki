
execute if score @s game_timer matches 0..600 as @e[predicate=nitijou_moti:level1] run tag @s add Chance1
execute if score @s game_timer matches 601..1201 as @e[predicate=nitijou_moti:level2] run tag @s add Chance2

tag @e[tag=success] remove success
