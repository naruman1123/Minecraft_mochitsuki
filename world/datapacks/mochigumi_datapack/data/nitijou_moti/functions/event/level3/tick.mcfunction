#execute if score 回数 kaisuu matches 30 if entity @e[tag=Level3] as @e[tag=player] run

tag @e[tag=Test] remove Chance2
scoreboard players reset @a use_bow
scoreboard players reset @a kine
scoreboard players reset @a usu
execute as @e[tag=success] run tag @s remove success

tag @e[tag=kine] add nonkine
tag @e[tag=nonkine] add lv3_player
tag @e[tag=kine] remove kine

tag @e[tag=usu] add nonusu
tag @e[tag=usu] remove usu

kill @e[tag=mochkunParts]
kill @e[tag=mochkunRoot]
kill @e[tag=Moti_Lv1_2,type=slime]

execute as @e[tag=Moti] at @s run summon firework_rocket ~ ~5 ~ {Fire:3,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16712451],FadeColors:[I;16383823]}]}}}}

execute as @a[tag=] run title @s times 10 20 10
execute as @a[tag=player] run title @s title {"text":"正しいモチをつけ！","bold": true,"color":"red"}

tag @e[tag=player] add lv3

summon armor_stand 52.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_1","round1"]}
summon armor_stand 50.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_2","round1"]}
summon armor_stand 48.5 83.0 -34.5 {Marker:1b,Invisible:1b,Tags:["event3","event3_3","round1"]}

execute as @e[tag=Level3] run function nitijou_moti:event/level3/ope1

execute if entity @e[tag=good] run tag @e[tag=Level3] remove Level3
