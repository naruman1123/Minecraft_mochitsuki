#execute as @e[tag=game_timer_start] run

execute if score @s game_timer matches 199 run tag @s remove tf_lv3_main
execute if score @s game_timer matches 200 run tag @s remove game_timer_start
