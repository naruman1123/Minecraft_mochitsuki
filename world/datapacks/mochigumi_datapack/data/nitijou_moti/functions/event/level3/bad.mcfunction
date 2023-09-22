#execute unless entity @e[tag=wait] run execute if score @e[tag=Moti_Lv3_bad1,limit=1] Moti_Lv3_hp matches 35..36 as @e[tag=player] run
#execute unless entity @e[tag=wait] run execute if score @e[tag=Moti_Lv3_bad2,limit=1] Moti_Lv3_hp matches 35..36 as @e[tag=player] run

title @s times 1 10 1
title @s actionbar {"text":"-1","bold":true,"color":"black"}

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1.0 1.0 1.0

scoreboard players remove 回数 kaisuu 1

execute if score @e[tag=Moti_Lv3_bad1,limit=1] Moti_Lv3_hp matches 42.. run scoreboard players set @s use_bow 0
execute if score @e[tag=Moti_Lv3_bad2,limit=1] Moti_Lv3_hp matches 42.. run scoreboard players set @s use_bow 0
