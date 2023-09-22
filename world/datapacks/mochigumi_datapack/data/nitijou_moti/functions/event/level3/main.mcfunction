#execute if score 回数 kaisuu matches 30..59 as @e[tag=player] run

execute if entity @e[tag=light_good_1] run execute as @e[tag=Moti_Lv3_good] run function nitijou_moti:event/level3/light

execute if entity @e[tag=wait] as @e[scores={use_bow=1..}] run scoreboard players set @s use_bow 0

execute as @e[tag=wait] run scoreboard players add @s wait 1
execute as @e[scores={wait=55..}] run kill @s

attribute @e[tag=Moti_Lv3_good,limit=1] generic.max_health base set 50
attribute @e[tag=Moti_Lv3_bad1,limit=1] generic.max_health base set 50
attribute @e[tag=Moti_Lv3_bad2,limit=1] generic.max_health base set 50

execute store result score @e[tag=Moti_Lv3_good] Moti_Lv3_hp run data get entity @e[tag=Moti_Lv3_good,limit=1] Health 1
execute store result score @e[tag=Moti_Lv3_bad1] Moti_Lv3_hp run data get entity @e[tag=Moti_Lv3_bad1,limit=1] Health 1
execute store result score @e[tag=Moti_Lv3_bad2] Moti_Lv3_hp run data get entity @e[tag=Moti_Lv3_bad2,limit=1] Health 1

execute unless entity @e[tag=wait] run execute if score @e[tag=Moti_Lv3_good,limit=1] Moti_Lv3_hp matches 42 as @e[tag=lv3_player,scores={use_bow=1..}] run function nitijou_moti:event/level3/good
execute unless entity @e[tag=wait] run execute if score @e[tag=Moti_Lv3_bad1,limit=1] Moti_Lv3_hp matches 42 as @e[tag=lv3_player,scores={use_bow=1..}] run function nitijou_moti:event/level3/bad
execute unless entity @e[tag=wait] run execute if score @e[tag=Moti_Lv3_bad2,limit=1] Moti_Lv3_hp matches 42 as @e[tag=lv3_player,scores={use_bow=1..}] run function nitijou_moti:event/level3/bad

execute if score @s game_timer matches 1442 as @s run function nitijou_moti:event/level3/next1
execute if score @s game_timer matches 1642 as @s run function nitijou_moti:event/level3/next2
execute if score @s game_timer matches 1842 as @s run function nitijou_moti:event/level3/next3

execute if score @s game_timer matches 1242 as @e[tag=player] run function nitijou_moti:event/level3/title_main
execute if score @s game_timer matches 1442 as @e[tag=player] run function nitijou_moti:event/level3/title_main
execute if score @s game_timer matches 1642 as @e[tag=player] run function nitijou_moti:event/level3/title_main
execute if score @s game_timer matches 1842 as @e[tag=player] run function nitijou_moti:event/level3/title_main

execute if score @e[tag=wait,limit=1] wait matches 54 run function nitijou_moti:event/level3/model