#execute if entity @e[tag=gamestart] as @e[tag=player2] run
team join nitijougumi @a

bossbar add sn:timer "残り時間 0:00"
bossbar set sn:timer players @a
bossbar set sn:timer color white
bossbar set sn:timer max 2521

scoreboard players add @e[tag=Timer] time 0
scoreboard players add @e[tag=Timer,scores={time=..2500}] time 25

execute as @e[tag=player] run title @s times 0 10 0
execute if score @e[tag=Timer,limit=1] time matches 25.. as @e[tag=player] run title @s title {"text": "5","color": "gray"}
execute if score @e[tag=Timer,limit=1] time matches 500.. as @e[tag=player] run title @s title {"text": "4","color": "gray"}
execute if score @e[tag=Timer,limit=1] time matches 1000.. as @e[tag=player] run title @s title {"text": "3","color": "gray"}
execute if score @e[tag=Timer,limit=1] time matches 1500.. as @e[tag=player] run title @s title {"text": "2","color": "gray"}
execute if score @e[tag=Timer,limit=1] time matches 2000.. as @e[tag=player] run title @s title {"text": "1","color": "gray"}
execute if score @e[tag=Timer,limit=1] time matches 2500.. as @e[tag=player] run function nitijou_moti:reset
