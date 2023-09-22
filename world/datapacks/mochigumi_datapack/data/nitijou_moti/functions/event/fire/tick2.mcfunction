#execute unless entity @e[tag=tf_fire_start2] run execute if block 41 82 -37 minecraft:chest{Items:[{Slot:4b,id:"minecraft:bread",Count:1b,tag:{CustomModelData:2}}]} as @e[tag=player3_2] run
execute if entity @e[tag=0_1] run kill @e[tag=0_1]
execute if entity @e[tag=player3_2] run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["1_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:12}}]}

title @s[tag=Koukou] times 10 20 10
title @s[tag=Koukou] title {"text":"焼き加減に気をつけて！","bold": true,"color":"red"}

scoreboard objectives add fire_time dummy
scoreboard players set @e[tag=Koukou] jump 0

tag @e[tag=Koukou,tag=!fire2] add fire2_2
tag @s[tag=Koukou] add tf_fire_start2
