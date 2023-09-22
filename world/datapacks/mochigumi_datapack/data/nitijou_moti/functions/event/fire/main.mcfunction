#execute as @e[tag=fire1] run
#execute as @e[tag=fire2] run
scoreboard players add @s fire_score 0

execute unless entity @e[tag=kogekoge1] run execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_log",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Sennkou] fire_score 5
execute unless entity @e[tag=kogekoge1] run execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_planks",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Sennkou] fire_score 3
execute unless entity @e[tag=kogekoge1] run execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Sennkou] fire_score 1

execute unless entity @e[tag=kogekoge2] run execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_log",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Koukou] fire_score 5
execute unless entity @e[tag=kogekoge2] run execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_planks",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Koukou] fire_score 3
execute unless entity @e[tag=kogekoge2] run execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]} run scoreboard players add @e[tag=Koukou] fire_score 1

execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_log",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -33 container.22 with air
execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_planks",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -33 container.22 with air
execute if block 41 82 -33 minecraft:chest{Items:[{Slot:22b,id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -33 container.22 with air

execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_log",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -37 container.22 with air
execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:oak_planks",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -37 container.22 with air
execute if block 41 82 -37 minecraft:chest{Items:[{Slot:22b,id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}]} run item replace block 41 82 -37 container.22 with air


execute if entity @e[tag=0_1] run execute if score @s[tag=Sennkou] fire_score matches 0 run kill @e[tag=0_1]
execute unless entity @e[tag=1_1] run execute if score @s[tag=Sennkou] fire_score matches 0 run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["1_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:11}}]}

execute if entity @e[tag=1_1] run execute if score @s[tag=Sennkou] fire_score matches 1.. run kill @e[tag=1_1]
execute unless entity @e[tag=2_1] run execute if score @s[tag=Sennkou] fire_score matches 1.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["2_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:13}}]}

execute if entity @e[tag=2_1] run execute if score @s[tag=Sennkou] fire_score matches 11.. run kill @e[tag=2_1]
execute unless entity @e[tag=3_1] run execute if score @s[tag=Sennkou] fire_score matches 11.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["3_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:14}}]}

execute if entity @e[tag=3_1] run execute if score @s[tag=Sennkou] fire_score matches 31.. run kill @e[tag=3_1]
execute unless entity @e[tag=4_1] run execute if score @s[tag=Sennkou] fire_score matches 31.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["4_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:15}}]}

execute if entity @e[tag=4_1] run execute if score @s[tag=Sennkou] fire_score matches 41.. run kill @e[tag=4_1]
execute unless entity @e[tag=5_1] run execute if score @s[tag=Sennkou] fire_score matches 41.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["5_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:16}}]}

execute if entity @e[tag=5_1] run execute if score @s[tag=Sennkou] fire_score matches 46.. run kill @e[tag=5_1]
execute unless entity @e[tag=6_1] run execute if score @s[tag=Sennkou] fire_score matches 46.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["6_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:19}}]}

execute if entity @e[tag=6_1] run execute if score @s[tag=Sennkou] fire_score matches 51.. run kill @e[tag=6_1]
execute unless entity @e[tag=7_1] run execute if score @s[tag=Sennkou] fire_score matches 51.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["7_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:20}}]}

execute if entity @e[tag=7_1] run execute if score @s[tag=Sennkou] fire_score matches 54.. run kill @e[tag=7_1]
execute unless entity @e[tag=8_1] run execute if score @s[tag=Sennkou] fire_score matches 54.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["8_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:21}}]}

execute if entity @e[tag=8_1] run execute if score @s[tag=Sennkou] fire_score matches 58.. run kill @e[tag=8_1]
execute unless entity @e[tag=9_1] run execute if score @s[tag=Sennkou] fire_score matches 58.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["9_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:17}}]}
execute if score @s[tag=Sennkou,tag=kagami] fire_score matches 58..60 run particle composter 41 82 -33 0.5 0.5 0.5 5 10 force @a

execute if entity @e[tag=9_1] run execute if score @s[tag=Sennkou] fire_score matches 61.. run kill @e[tag=9_1]
execute unless entity @e[tag=koge_1] run execute if score @s[tag=Sennkou] fire_score matches 61.. run summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["koge_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:22}}]}


execute if entity @e[tag=0_2] run execute if score @s[tag=Koukou] fire_score matches 0 run kill @e[tag=0_2]
execute unless entity @e[tag=1_2] run execute if score @s[tag=Koukou] fire_score matches 0 run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["1_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:11}}]}

execute if entity @e[tag=1_2] run execute if score @s[tag=Koukou] fire_score matches 1.. run kill @e[tag=1_2]
execute unless entity @e[tag=2_2] run execute if score @s[tag=Koukou] fire_score matches 1.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["2_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:13}}]}

execute if entity @e[tag=2_2] run execute if score @s[tag=Koukou] fire_score matches 11.. run kill @e[tag=2_2]
execute unless entity @e[tag=3_2] run execute if score @s[tag=Koukou] fire_score matches 11.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["3_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:14}}]}

execute if entity @e[tag=3_2] run execute if score @s[tag=Koukou] fire_score matches 31.. run kill @e[tag=3_2]
execute unless entity @e[tag=4_2] run execute if score @s[tag=Koukou] fire_score matches 31.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["4_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:15}}]}

execute if entity @e[tag=4_2] run execute if score @s[tag=Koukou] fire_score matches 41.. run kill @e[tag=4_2]
execute unless entity @e[tag=5_2] run execute if score @s[tag=Koukou] fire_score matches 41.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["5_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:16}}]}

execute if entity @e[tag=5_2] run execute if score @s[tag=Koukou] fire_score matches 46.. run kill @e[tag=5_2]
execute unless entity @e[tag=6_2] run execute if score @s[tag=Koukou] fire_score matches 46.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["6_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:19}}]}

execute if entity @e[tag=6_2] run execute if score @s[tag=Koukou] fire_score matches 51.. run kill @e[tag=6_2]
execute unless entity @e[tag=7_2] run execute if score @s[tag=Koukou] fire_score matches 51.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["7_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:20}}]}

execute if entity @e[tag=7_2] run execute if score @s[tag=Koukou] fire_score matches 54.. run kill @e[tag=7_2]
execute unless entity @e[tag=8_2] run execute if score @s[tag=Koukou] fire_score matches 54.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["8_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:21}}]}

execute if entity @e[tag=8_2] run execute if score @s[tag=Koukou] fire_score matches 58.. run kill @e[tag=8_2]
execute unless entity @e[tag=9_2] run execute if score @s[tag=Koukou] fire_score matches 58.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["9_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:17}}]}
execute if score @s[tag=Koukou,tag=kagami] fire_score matches 58..60 run particle composter 41 82 -33 0.5 0.5 0.5 5 10 force @a

execute if entity @e[tag=9_2] run execute if score @s[tag=Koukou] fire_score matches 61.. run kill @e[tag=9_2]
execute unless entity @e[tag=koge_2] run execute if score @s[tag=Koukou] fire_score matches 61.. run summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["koge_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:22}}]}

execute if score @s[tag=Sennkou] fire_score matches 61.. run tag @s[tag=fire1] add kogekoge1
execute if score @s[tag=Koukou] fire_score matches 61.. run tag @s[tag=fire2] add kogekoge2

execute if entity @e[tag=kogekoge1] run scoreboard players set @s[tag=fire1] kaisuu -1
execute if entity @e[tag=kogekoge1] run scoreboard players set @s[tag=fire1_2] kaisuu -1
execute if entity @e[tag=kogekoge2] run scoreboard players set @s[tag=fire2] kaisuu -1
execute if entity @e[tag=kogekoge2] run scoreboard players set @s[tag=fire2_2] kaisuu -1
