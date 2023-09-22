#execute if score @e[tag=player2,limit=1] game_timer matches 2500 as @e[tag=player2] run
bossbar remove sn:timer

tag @s[tag=Sennkou] add fire1
tag @s[tag=Koukou] add fire2

execute as @e[tag=player] run title @s times 10 20 10
execute as @e[tag=player] run title @s title {"text":"おわり","bold": true,"color":"red"}

scoreboard players operation @s[tag=Sennkou] kaisuu = 回数 kaisuu
scoreboard players operation @s[tag=Koukou] kaisuu = 回数 kaisuu

give @s bread{display:{Name:'{"text":"つきたてのモチ"}'},CustomModelData:2}

kill @e[type=slime]
kill @e[tag=mochkunParts]
kill @e[tag=mochkunRoot]

tag @s remove player2
tag @a remove kine
tag @a remove usu
tag @e[nbt={Tags:["player","Sennkou"]}] add player3_1
tag @e[nbt={Tags:["player","Koukou"]}] add player3_2
tag @a remove player

scoreboard objectives remove game_timer
