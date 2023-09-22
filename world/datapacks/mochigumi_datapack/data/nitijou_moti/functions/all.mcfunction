#日常組　依頼分　『餅つき大会』

execute as @e[tag=Moti] run effect give @s invisibility 1 1 true

attribute @e[tag=Moti_Lv1_2,limit=1] generic.max_health base set 50

execute as @e[tag=Moti] at @s run effect give @s regeneration 20 255 true
execute as @e[tag=Moti] at @s run effect give @s health_boost 20 255 true

execute store result score @a damage run data get entity @e[tag=Moti,limit=1] Health 1

execute if entity @e[tag=success] run data modify entity @e[tag=Moti,limit=1] Health set value 50

execute as @e[tag=kine,tag=!torazo,scores={use_bow=1..}] if entity @s[scores={damage=35..36}] at @s run function nitijou_moti:player_data/kine
execute as @e[tag=usu,tag=!torazo,scores={use_bow=1..}] if entity @s[scores={damage=35..36}] at @s run function nitijou_moti:player_data/usu
execute as @e[tag=kine,tag=torazo,scores={use_bow=1..}] if entity @s[scores={damage=45..46}] at @s run function nitijou_moti:player_data/kine
execute as @e[tag=usu,tag=torazo,scores={use_bow=1..}] if entity @s[scores={damage=45..46}] at @s run function nitijou_moti:player_data/usu

execute unless entity @e[tag=lv3] run execute as @e[tag=nonkine,scores={use_bow=1..}] if entity @s[scores={damage=35..36}] at @s run function nitijou_moti:player_data/nonkine
execute unless entity @e[tag=lv3] run execute as @e[tag=nonusu,scores={use_bow=1..}] if entity @s[scores={damage=35..36}] at @s run function nitijou_moti:player_data/nonusu

execute as @e[scores={damage=50}] run tag @a remove success

execute unless entity @e[tag=Level1] as @e[tag=success] run function asa_animator:mochkun/main
execute unless entity @e[tag=Level2] as @e[tag=success] run function asa_animator:mochkun/main

execute if entity @e[tag=Chance1] as @e[tag=mochkunRoot] run function asa_animator:mochkun/mochtuch/main
execute if entity @e[tag=Chance2] as @e[tag=mochkunRoot] run function asa_animator:mochkun/mochtuch/main

execute as @e[scores={kine=2..}] at @s run function nitijou_moti:miss
execute as @e[scores={usu=2..}] at @s run function nitijou_moti:miss
execute if entity @e[tag=Chance1] as @e[scores={use_bow=1..}] at @s run function nitijou_moti:miss
execute if entity @e[tag=Chance2] as @e[scores={use_bow=1..}] at @s run function nitijou_moti:miss

execute if entity @e[tag=Chance1] as @e[scores={kine=1..}] run scoreboard players set @a kine 0
execute if entity @e[tag=Chance1] as @e[scores={usu=1..}] run scoreboard players set @a usu 0
execute if entity @e[tag=Chance2] as @e[scores={kine=1..}] run scoreboard players set @a kine 0
execute if entity @e[tag=Chance2] as @e[scores={usu=1..}] run scoreboard players set @a usu 0

execute if score @e[tag=player,limit=1] game_timer matches 601.. if entity @e[tag=Level2] run function nitijou_moti:event/level2_tick
execute if score @e[tag=player,limit=1] game_timer matches 1202.. if entity @e[tag=Level3] run function nitijou_moti:event/level3/tick
execute if score @e[tag=player,limit=1] game_timer matches 2043.. if entity @e[tag=Level4] run function nitijou_moti:event/level4/tick

execute as @e[tag=player] if score @s game_timer matches 1202..2042 as @e[tag=player2] run function nitijou_moti:event/level3/main
execute as @e[tag=player] if score @s game_timer matches 2043..2443 run function nitijou_moti:event/level4/main
execute if score @e[tag=player,limit=1] game_timer matches 2045 run function asa_animator:mochkun/model

execute store result bossbar sn:timer value run scoreboard players get @e[tag=Timer,limit=1] time
execute if entity @e[tag=Timer,scores={time=10..}] run function nitijou_moti:timer

execute as @e[predicate=nitijou_moti:motijump,tag=fire1] run function nitijou_moti:player_data/jump/jumpmain
execute as @e[predicate=nitijou_moti:motijump,tag=fire2] run function nitijou_moti:player_data/jump/jumpmain
execute as @e[predicate=nitijou_moti:motijump,tag=fire1_2] run function nitijou_moti:player_data/jump/jumpmain
execute as @e[predicate=nitijou_moti:motijump,tag=fire2_2] run function nitijou_moti:player_data/jump/jumpmain

effect give @a regeneration 1 255 true

execute if entity @e[tag=kine,scores={start=0}] if entity @e[tag=usu,scores={start=0}] as @e[tag=player] run function nitijou_moti:ready1
execute as @e[scores={start=1}] run title @a reset
execute as @e[tag=player,scores={start=1..}] run tag @s add gamestart
execute if entity @e[tag=gamestart] as @e[tag=player2] run function nitijou_moti:gamestart
execute if score @e[tag=Timer,limit=1] time matches 2521.. as @e[tag=player] run title @s title {"text":"START!","color":"red"}
execute if entity @e[tag=!gamestart,scores={time=..2521}] run scoreboard players remove @e[tag=Timer] time 1

execute if score @e[tag=player2,limit=1] game_timer matches 2500 as @e[tag=player2] run function nitijou_moti:player_data/motituki_end

execute unless entity @e[tag=tf_fire_start1] run execute if block 41 82 -33 minecraft:chest{Items:[{Slot:4b,id:"minecraft:bread",Count:1b,tag:{CustomModelData:2}}]} as @e[tag=player3_1] run function nitijou_moti:event/fire/tick1
execute unless entity @e[tag=tf_fire_start2] run execute if block 41 82 -37 minecraft:chest{Items:[{Slot:4b,id:"minecraft:bread",Count:1b,tag:{CustomModelData:2}}]} as @e[tag=player3_2] run function nitijou_moti:event/fire/tick2

execute as @e[tag=fire1] run function nitijou_moti:event/fire/main
execute as @e[tag=fire2] run function nitijou_moti:event/fire/main

execute as @e[scores={cookie=1..},tag=Sennkou] run scoreboard players add 回数 kaisuu 50
execute as @e[scores={cookie=1..},tag=Koukou] run scoreboard players add 回数 kaisuu 50
execute as @e[scores={cookie=1..}] run scoreboard players add @s[tag=fire1] kaisuu 50
execute as @e[scores={cookie=1..}] run scoreboard players add @s[tag=fire2] kaisuu 50
execute as @e[scores={cookie=1..}] run scoreboard players reset @s cookie

execute as @e[scores={melon_slice=1..},tag=Sennkou] run tag @s add sakura
execute as @e[scores={melon_slice=1..},tag=Koukou] run tag @s add sakura
execute if entity @e[tag=sakura] run scoreboard objectives add glow_berries minecraft.used:minecraft.glow_berries
execute as @e[tag=sakura] run give @s glow_berries{display:{Name:'{"text":"ミニさくら餅"}',Lore:['{"text":"食べると総ポイント+1"}']},CustomModelData:1} 10
execute as @e[scores={glow_berries=1..},tag=Sennkou] run scoreboard players add 回数 kaisuu 1
execute as @e[scores={glow_berries=1..},tag=Koukou] run scoreboard players add 回数 kaisuu 1
execute as @e[scores={glow_berries=1..}] run scoreboard players add @s[tag=fire1] kaisuu 1
execute as @e[scores={glow_berries=1..}] run scoreboard players add @s[tag=fire2] kaisuu 1
execute as @e[scores={glow_berries=1..}] run scoreboard players reset @s glow_berries
execute as @e[tag=sakura] run tag @s remove sakura
execute as @e[scores={melon_slice=1..}] run scoreboard players reset @s melon_slice

execute as @e[scores={apple=1..},tag=Sennkou] run tag @s add apple
execute as @e[scores={apple=1..},tag=Koukou] run tag @s add apple
execute as @e[scores={apple=1..}] run scoreboard players reset @s apple

execute as @e[scores={cooked_mutton=1..},tag=Sennkou] run tag @s add peinto
execute as @e[scores={cooked_mutton=1..},tag=Koukou] run tag @s add peinto
execute if entity @e[tag=peinto] as @e[tag=Test] run function nitijou_moti:player_data/item/ope2
execute as @e[scores={cooked_mutton=1..}] run scoreboard players reset @s cooked_mutton

execute as @e[scores={cooked_porkchop=1..},tag=Sennkou] run tag @s add kuronoa
execute as @e[scores={cooked_porkchop=1..},tag=Koukou] run tag @s add kuronoa
execute as @e[scores={cooked_porkchop=1..}] run scoreboard players reset @s cooked_porkchop

execute as @e[scores={bread=1..},tag=Sennkou] run tag @s add torazo
execute as @e[scores={bread=1..},tag=Koukou] run tag @s add torazo
execute as @e[scores={bread=1..}] run scoreboard players reset @s bread

execute as @e[scores={cooked_beef=1..},tag=Sennkou] run tag @s add light_good_1
execute as @e[scores={cooked_beef=1..},tag=Koukou] run tag @s add light_good_1
execute as @e[scores={cooked_beef=1..}] run scoreboard players reset @s cooked_beef

execute as @e[scores={carrot=1..},tag=Sennkou] run tag @s add kagami
execute as @e[scores={carrot=1..},tag=Koukou] run tag @s add kagami
execute as @e[scores={carrot=1..},tag=Sennkou] run item replace entity @s armor.head with carrot{CustomModelData:1} 1
execute as @e[scores={carrot=1..},tag=Koukou] run item replace entity @s armor.head with carrot{CustomModelData:1} 1
execute as @e[scores={carrot=1..}] run scoreboard players reset @s carrot

execute as @e[scores={cooked_chicken=1..},tag=Sennkou] run tag @s add ou
execute as @e[scores={cooked_chicken=1..},tag=Koukou] run tag @s add ou
execute as @e[tag=ou] run function nitijou_moti:ou

execute as @e[scores={baked_potato=1..},tag=Sennkou] run scoreboard players reset 回数 kaisuu
execute as @e[scores={baked_potato=1..},tag=Koukou] run scoreboard players reset 回数 kaisuu
execute as @e[scores={baked_potato=1..},tag=Sennkou] run scoreboard players reset @s[tag=player2] kaisuu
execute as @e[scores={baked_potato=1..},tag=Koukou] run scoreboard players reset @s[tag=player2] kaisuu
execute as @e[scores={baked_potato=1..}] run scoreboard players reset @s[tag=fire1] fire_score
execute as @e[scores={baked_potato=1..}] run scoreboard players reset @s[tag=fire2] fire_score
execute as @e[scores={baked_potato=1..}] run scoreboard players reset @s baked_potato

execute as @e[scores={pumpkin_pie=1..},tag=Sennkou] run effect give @s hunger 600 1
execute as @e[scores={pumpkin_pie=1..},tag=Koukou] run effect give @s hunger 600 1
execute as @e[scores={pumpkin_pie=1..}] run scoreboard players reset @s pumpkin_pie

execute as @e[scores={cooked_rabbit=1..},tag=Sennkou] run give @s bow{display:{Name:'{"text":"エビフライ杵"}'},CustomModelData:3,Enchantments:[{id:"minecraft:power",lvl:5},{id:"minecraft:infinity",lvl:1}]}
execute as @e[scores={cooked_rabbit=1..},tag=Koukou] run give @s bow{display:{Name:'{"text":"エビフライ杵"}'},CustomModelData:3,Enchantments:[{id:"minecraft:power",lvl:5},{id:"minecraft:infinity",lvl:1}]}
execute as @e[scores={cooked_rabbit=1..}] run scoreboard players reset @s cooked_rabbit

execute as @e[scores={beetroot=1..},tag=Sennkou] run function nitijou_moti:player_data/item/fox
execute as @e[scores={beetroot=1..},tag=Koukou] run function nitijou_moti:player_data/item/fox

execute as @e[scores={tropical_fish=1..},tag=Sennkou] run function nitijou_moti:player_data/item/cat
execute as @e[scores={tropical_fish=1..},tag=Koukou] run function nitijou_moti:player_data/item/cat

execute if entity @e[scores={fire_score=0},tag=Sennkou] run item replace block 41 82 -33 container.21 with minecraft:black_concrete{CustomModelData:27} 1
execute if entity @e[scores={fire_score=0},tag=Koukou] run item replace block 41 82 -37 container.21 with minecraft:black_concrete{CustomModelData:27} 1

execute as @a store success score @s moveshitirinn run clear @s minecraft:black_concrete{CustomModelData:27}
execute as @a store success score @s moveshitirinn run clear @s minecraft:black_concrete{CustomModelData:26}

execute if entity @e[scores={fire_score=1..},tag=fire1] run item replace block 41 82 -33 container.21 with minecraft:black_concrete{CustomModelData:26} 1
execute if entity @e[scores={fire_score=1..},tag=fire2] run item replace block 41 82 -37 container.21 with minecraft:black_concrete{CustomModelData:26} 1


execute if score @s[predicate=nitijou_moti:jump_plus] kaisuu matches 128..171 as @s run function nitijou_moti:player_data/jump/jump_plus1
execute if score @s[predicate=nitijou_moti:jump_plus] kaisuu matches 172..215 as @s run function nitijou_moti:player_data/jump/jump_plus2
execute if score @s[predicate=nitijou_moti:jump_plus] kaisuu matches 216..254 as @s run function nitijou_moti:player_data/jump/jump_plus3

data merge block 54 84 -36 {Lock:"Nitijou"}
