#execute unless entity @e[tag=tf_fire_start1] run execute if block 41 82 -33 minecraft:chest{Items:[{Slot:4b,id:"minecraft:bread",Count:1b,tag:{CustomModelData:2}}]} as @e[tag=player3_1] run
execute if entity @e[tag=0_1] run kill @e[tag=0_1]
execute if entity @e[tag=player3_1] run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["1_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:12}}]}

execute as @e[tag=apple] run scoreboard players operation @s kaisuu *= $2 Constant

title @s[tag=Sennkou] times 10 20 10
title @s[tag=Sennkou] title {"text":"焼き加減に気をつけて！","bold": true,"color":"red"}

tag @a remove apple
scoreboard objectives add fire_time dummy
scoreboard players set @e[tag=Sennkou] jump 0

tag @e[tag=Sennkou,tag=!fire1] add fire1_2
tag @s[tag=Sennkou] add tf_fire_start1
