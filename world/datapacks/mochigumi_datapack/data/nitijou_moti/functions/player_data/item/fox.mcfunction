
scoreboard objectives add fox dummy
scoreboard players add @s fox 1

execute if entity @e[scores={fox=1}] run summon fox 50 83 -40 {NoAI:1b,Tags:["inari"],CustomName:'{"text":"イナリさん"}',CustomNameVisible:1b}

execute if score @s fox matches 100 run scoreboard players add @s[tag=player2] kaisuu 10
execute if score @s fox matches 100 run scoreboard players add @s[tag=fire1] kaisuu 10
execute if score @s fox matches 100 run scoreboard players add @s[tag=fire2] kaisuu 10

execute if score @s fox matches 100 run playsound entity.player.levelup master @a ~ ~ ~ 1.0 1.0 1.0

execute if score @s fox matches 120 as @e[tag=inari] run tp @s ~ ~-10000 ~ ~ ~

execute if score @s fox matches 121 run scoreboard players reset @s beetroot
