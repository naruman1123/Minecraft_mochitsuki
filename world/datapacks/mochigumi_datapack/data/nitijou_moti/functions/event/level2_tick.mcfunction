
execute as @e[tag=Moti] at @s run summon firework_rocket ~ ~5 ~ {Fire:3,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;16712451],FadeColors:[I;16383823]}]}}}}

title @a times 1 10 5
title @a title {"text":"Lv.２！！","bold": true,"color":"gold"}

tag @e[tag=Level2] remove Level2
