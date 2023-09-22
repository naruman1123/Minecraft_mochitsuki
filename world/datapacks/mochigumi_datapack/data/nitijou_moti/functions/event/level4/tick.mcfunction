
tag @e[tag=lv3] remove lv3
execute as @e[tag=lv3_player] run tag @s remove lv3_player

execute as @e[tag=Moti_Lv3_good] at @s run summon firework_rocket ~ ~5 ~ {Fire:3,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16712451],FadeColors:[I;16383823]}]}}}}

title @a times 1 10 5
title @a title {"text":"Lv.４！！","bold": true,"color":"red"}

tag @e[tag=nonkine] add kine
tag @e[tag=nonusu] add usu

tag @e[tag=nonkine] remove nonkine
tag @e[tag=nonusu] remove nonusu

tag @e[tag=Level4] remove Level4