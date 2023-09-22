
execute unless entity @e[scores={usu=1..}] run scoreboard players add 回数 kaisuu 1

scoreboard players add @s usu 1

execute as @e[scores={kine=1..}] run scoreboard players set @s kine 0

execute as @e[scores={use_bow=1..}] run scoreboard players set @a use_bow 0

tag @s add success

data modify entity @e[tag=Moti,limit=1] Health set value 50