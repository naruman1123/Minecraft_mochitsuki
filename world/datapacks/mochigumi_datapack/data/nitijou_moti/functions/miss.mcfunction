
execute as @e[tag=kine,tag=!apple] at @s run tp @s ~ ~5 ~
execute as @e[tag=usu,tag=!apple] at @s run tp @s ~ ~5 ~

execute as @e[tag=nonkine,tag=!apple] at @s run tp @s ~ ~5 ~
execute as @e[tag=nonusu,tag=!apple] at @s run tp @s ~ ~5 ~

execute as @e[tag=kine,tag=apple] at @s run tp @s ~ ~20 ~
execute as @e[tag=usu,tag=apple] at @s run tp @s ~ ~20 ~

execute as @e[tag=nonkine,tag=apple] at @s run tp @s ~ ~20 ~
execute as @e[tag=nonusu,tag=apple] at @s run tp @s ~ ~20 ~

scoreboard players set @a kine 0
scoreboard players set @a usu 0

execute as @e[scores={use_bow=1..}] run scoreboard players set @s use_bow 0

data modify entity @e[tag=Moti,limit=1] Health set value 50
