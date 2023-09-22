
setblock 49 83 -35 minecraft:light_weighted_pressure_plate
setblock 51 83 -35 minecraft:light_weighted_pressure_plate

summon armor_stand 46.0 83.0 -39.0 {Marker:1b,Invisible:1b,NoGravity:1b,NoAI:1b,Tags:["Test","Level2","Level3","Level4","Timer"]}
summon slime 50.5 83.2 -34.5 {NoAI:1b,Size:0,NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:["Moti","Moti_Lv1_2"]}
summon armor_stand 46.0 83.0 -40.0 {Marker:1b,Invisible:1b,NoGravity:1b,NoAI:1b,Tags:["wait"]}

summon armor_stand 41 82 -33 {Marker:1b,Invisible:1b,Tags:["0_1"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:11}}]}
setblock 41 82 -33 minecraft:chest replace
summon armor_stand 41 82 -37 {Marker:1b,Invisible:1b,Tags:["0_2"],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:11}}]}
setblock 41 82 -37 minecraft:chest replace

function asa_animator:mochkun/summon
function asa_animator:mochkun/model

scoreboard objectives add kaisuu dummy
scoreboard objectives add damage dummy
scoreboard objectives add use_bow minecraft.used:minecraft.bow
scoreboard objectives add kine dummy
scoreboard objectives add usu dummy
scoreboard objectives add time dummy
scoreboard objectives add Constant dummy
scoreboard objectives add kekka1 dummy
scoreboard objectives add kekka2 dummy
scoreboard objectives add start minecraft.custom:minecraft.sneak_time
scoreboard objectives add Lv3random dummy
scoreboard objectives add Moti_Lv3_hp dummy
scoreboard objectives add wait dummy
scoreboard objectives add apple minecraft.used:minecraft.apple
scoreboard objectives add cooked_mutton minecraft.used:minecraft.cooked_mutton
scoreboard objectives add bread minecraft.used:minecraft.bread
scoreboard objectives add cooked_porkchop minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add cod minecraft.used:minecraft.cod
scoreboard objectives add salmon minecraft.used:minecraft.salmon
scoreboard objectives add cooked_cod minecraft.used:minecraft.cooked_cod
scoreboard objectives add cooked_salmon minecraft.used:minecraft.cooked_salmon
scoreboard objectives add cookie minecraft.used:minecraft.cookie
scoreboard objectives add melon_slice minecraft.used:minecraft.melon_slice
scoreboard objectives add cooked_beef minecraft.used:minecraft.cooked_beef
scoreboard objectives add cooked_chicken minecraft.used:minecraft.cooked_chicken
scoreboard objectives add carrot minecraft.used:minecraft.carrot
scoreboard objectives add baked_potato minecraft.used:minecraft.baked_potato
scoreboard objectives add pumpkin_pie minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add cooked_rabbit minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add beetroot minecraft.used:minecraft.beetroot
scoreboard objectives add tropical_fish minecraft.used:minecraft.tropical_fish
scoreboard objectives add moveshitirinn dummy
scoreboard objectives add fire_score dummy
scoreboard objectives add jump dummy

scoreboard players set $1200 Constant 1200
scoreboard players set $20 Constant 20
scoreboard players set $2 Constant 2
scoreboard players reset @a kine
scoreboard players reset @a usu
scoreboard players reset @a use_bow
scoreboard players reset 回数 kaisuu
scoreboard players reset @a damage
scoreboard players reset @a start
scoreboard players set #10 Lv3random 10
scoreboard players set #10 itemrandom 10
scoreboard players set @a fire_score 0

data merge block 54 84 -36 {Lock:"a"}
