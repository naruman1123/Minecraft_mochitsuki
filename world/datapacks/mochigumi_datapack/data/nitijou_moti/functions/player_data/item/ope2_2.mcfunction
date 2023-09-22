#execute if score @s itemrandom matches 0..9 run execute as @s[tag=peinto] run
execute if score @s itemrandom matches 0..1 run execute if entity @e[tag=Sennkou] run scoreboard players add @e[tag=peinto] kaisuu 50
execute if score @s itemrandom matches 2..3 run execute if entity @e[tag=Sennkou] run scoreboard players add @e[tag=peinto] kaisuu 20
execute if score @s itemrandom matches 4..5 run execute if entity @e[tag=Sennkou] run scoreboard players add @e[tag=peinto] kaisuu 10
execute if score @s itemrandom matches 6..7 run execute if entity @e[tag=Sennkou] run scoreboard players remove @e[tag=peinto] kaisuu 50

execute if score @s itemrandom matches 0..1 run execute if entity @e[tag=Koukou] run scoreboard players add @e[tag=peinto] kaisuu 50
execute if score @s itemrandom matches 2..3 run execute if entity @e[tag=Koukou] run scoreboard players add @e[tag=peinto] kaisuu 20
execute if score @s itemrandom matches 4..5 run execute if entity @e[tag=Koukou] run scoreboard players add @e[tag=peinto] kaisuu 10
execute if score @s itemrandom matches 6..7 run execute if entity @e[tag=Koukou] run scoreboard players remove @e[tag=peinto] kaisuu 50

execute if score @s itemrandom matches 8..9 run kill @e[tag=itemAEC2]

execute if score @s itemrandom matches 0..7 run tag @e[tag=peinto] remove peinto
execute if score @s itemrandom matches 0..7 run tag @e[tag=peinto] remove peinto

execute if score @s itemrandom matches 8..9 run function nitijou_moti:player_data/item/ope2
