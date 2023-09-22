#execute if score @s Lv3random matches 0..9 run execute as @s run

execute if score @s Lv3random matches 1..3 run tag @e[tag=event3_1] add good
execute if score @s Lv3random matches 4..6 run tag @e[tag=event3_2] add good
execute if score @s Lv3random matches 7..9 run tag @e[tag=event3_3] add good

execute as @e[tag=!good,tag=event3,limit=1] run tag @s add bad1
execute if entity @e[tag=bad1] as @e[tag=!good,tag=!bad1,tag=event3] run tag @s add bad2

execute if score @s Lv3random matches 0 run kill @e[tag=Lv3AEC]

execute if score @s Lv3random matches 0 run function nitijou_moti:event/level3/ope1

execute at @e[tag=good] run summon slime ~ ~ ~ {NoAI:1b,Size:0,NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:["Moti","Moti_Lv3_good"]}
execute at @e[tag=bad1] run summon slime ~ ~ ~ {NoAI:1b,Size:0,NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:["Moti","Moti_Lv3_bad1"]}
execute at @e[tag=bad2] run summon slime ~ ~ ~ {NoAI:1b,Size:0,NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:["Moti","Moti_Lv3_bad2"]}
