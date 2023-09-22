#execute if score @s kaisuu matches 53..78 run execute as @e[tag=Test] run
summon area_effect_cloud ~ ~ ~ {Tags:["itemAEC1"]}

execute store result score @s itemrandom run data get entity @e[tag=itemAEC1,limit=1] UUID[0]

scoreboard players operation @s itemrandom %= #10 itemrandom

execute if score @s itemrandom matches 0..9 run execute as @s run function nitijou_moti:player_data/item/ope1_2

