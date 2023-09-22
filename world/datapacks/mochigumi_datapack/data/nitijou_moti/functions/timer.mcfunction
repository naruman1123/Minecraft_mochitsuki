
bossbar set sn:timer name ["",{"text":"残り時間 ","color":"red","bold":true}]

execute if entity @e[tag=Timer,scores={time=19}] run function nitijou_moti:timerreset
