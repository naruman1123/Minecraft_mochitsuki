
title @s times 1 10 1
title @s actionbar {"text":"+1","bold":true,"color":"black"}

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1.0 1.0 1.0

scoreboard players add 回数 kaisuu 1

execute if score @e[tag=Moti_Lv3_good,limit=1] Moti_Lv3_hp matches 42.. run scoreboard players set @s use_bow 0
