#execute if score @s game_timer matches 250 as @s run
#execute unless entity @e[tag=Level3_2] as @e[tag=Test] run
#execute unless entity @e[tag=Level3_2] as @e[tag=Test] run

scoreboard players reset @e[tag=Moti] Moti_Lv3_hp

tag @e[tag=nonkine] remove lv3_player
tag @e[tag=nonusu] add lv3_player

summon armor_stand 46.0 83.0 -40.0 {NoGravity:1b,Invisible:1b,NoAI:1b,Tags:["wait"]}

kill @e[tag=event3]
kill @e[tag=Moti,type=slime]

summon armor_stand 52.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_1","round2"]}
summon armor_stand 50.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_2","round2"]}
summon armor_stand 48.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_3","round2"]}

execute unless entity @e[tag=Level3_2] as @e[tag=Test] run function nitijou_moti:event/level3/ope1

execute if entity @e[tag=good] run tag @e[tag=Test] add next1
