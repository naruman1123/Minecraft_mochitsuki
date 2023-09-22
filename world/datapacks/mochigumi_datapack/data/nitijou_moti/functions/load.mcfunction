say リロードしたよ！

scoreboard objectives remove game_timer
scoreboard objectives remove fire_time
scoreboard objectives remove kaisuu
scoreboard objectives remove fox
scoreboard objectives remove cat
scoreboard objectives remove jump

tag @a remove kine
tag @a remove usu
tag @a remove success
tag @a remove player
tag @a remove tf_lv3_main
tag @a remove lv3_hit
tag @a remove Koukou
tag @a remove Sennkou
tag @a remove lv3_player
tag @a remove nonkine
tag @a remove nonusu
tag @a remove player2
tag @a remove fire1
tag @a remove fire2
tag @a remove fire1_2
tag @a remove fire2_2
tag @a remove tf_fire_start1
tag @a remove tf_fire_start2
tag @a remove lv3
tag @a remove player3_1
tag @a remove player3_2
tag @a remove jump
tag @a remove kogekoge1
tag @a remove kogekoge2
tag @a remove gamestart
tag @a remove apple
tag @a remove peinto
tag @a remove kuronoa
tag @a remove torazo
tag @a remove light_good_1
tag @a remove kagami
tag @a remove ou

bossbar remove sn:timer

kill @e[type=armor_stand]
kill @e[type=slime]
kill @e[tag=Test]

setblock 49 83 -35 minecraft:light_weighted_pressure_plate
setblock 51 83 -35 minecraft:light_weighted_pressure_plate

team add nitijougumi
team modify nitijougumi friendlyFire false

difficulty hard

setblock 47 77 -40 redstone_block replace
