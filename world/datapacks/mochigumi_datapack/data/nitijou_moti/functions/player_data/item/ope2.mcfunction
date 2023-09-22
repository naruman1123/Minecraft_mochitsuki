#execute if entity @e[tag=peinto] as @e[tag=Test] run
summon area_effect_cloud ~ ~ ~ {Tags:["itemAEC2"]}

execute store result score @s itemrandom run data get entity @e[tag=itemAEC2,limit=1] UUID[0]

scoreboard players operation @s itemrandom %= #10 itemrandom

execute if score @s itemrandom matches 0..9 run execute as @s run function nitijou_moti:player_data/item/ope2_2
