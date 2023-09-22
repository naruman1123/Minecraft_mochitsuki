

scoreboard objectives add cat dummy
scoreboard players add @s cat 1

execute if entity @e[scores={cat=1}] run summon cat 50 83 -40 {NoAI:1b,Tags:["cat"]}

execute if score @s cat matches 100 run scoreboard players add @s[tag=player2] kaisuu 10
execute if score @s cat matches 100 run scoreboard players add @s[tag=fire1] kaisuu 10
execute if score @s cat matches 100 run scoreboard players add @s[tag=fire2] kaisuu 10

execute if score @s cat matches 100 run playsound entity.player.levelup master @a ~ ~ ~ 1.0 1.0 1.0

execute if score @s cat matches 120 as @e[tag=cat] run tp @s ~ ~-10000 ~ ~ ~

execute if score @s cat matches 121 run scoreboard players reset @s tropical_fish
