#execute as @e[tag=Level3] run
#execute if score @s Lv3random matches 0 run
#execute unless entity @e[tag=Level3_2] as @e[tag=Test] run

summon area_effect_cloud ~ ~ ~ {Tags:["Lv3AEC"]}

execute store result score @s Lv3random run data get entity @e[tag=Lv3AEC,distance=..0.01,limit=1] UUID[0]

scoreboard players operation @s Lv3random %= #10 Lv3random

execute if score @s Lv3random matches 0..9 run execute as @s run function nitijou_moti:event/level3/ope2
