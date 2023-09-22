#execute as @e[predicate=nitijou_moti:motijump,tag=fire1] run
#execute as @e[predicate=nitijou_moti:motijump,tag=fire2] run
#execute as @e[predicate=nitijou_moti:motijump,tag=fire1_2] run
#execute as @e[predicate=nitijou_moti:motijump,tag=fire2_2] run

scoreboard objectives add itemrandom dummy

execute unless entity @e[nbt={Tags:["jump","Sennkou"]}] run scoreboard players operation @s[tag=Sennkou] kaisuu += @s[tag=fire1] fire_score
execute unless entity @e[nbt={Tags:["jump","Koukou"]}] run scoreboard players operation @s[tag=Koukou] kaisuu += @s[tag=fire2] fire_score


execute if score @s kaisuu matches 1..45 as @s run function nitijou_moti:player_data/jump/jump1
execute if score @s kaisuu matches 46..90 as @s run function nitijou_moti:player_data/jump/jump2
execute if score @s kaisuu matches 91..135 as @s run function nitijou_moti:player_data/jump/jump3
execute if score @s kaisuu matches 136..180 as @s run function nitijou_moti:player_data/jump/jump4

execute if score @s[tag=Sennkou] kaisuu matches 1..52 run item replace block 41 82 -33 container.4 with minecraft:cookie{display:{Name:'{"text":"ビートルート餅"}',Lore:['{"text":"ビートルート教団から50ポイントもらえる"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 1..52 run item replace block 41 82 -37 container.4 with minecraft:cookie{display:{Name:'{"text":"ビートルート餅"}',Lore:['{"text":"ビートルート教団から50ポイントもらえる"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 53..78 run execute as @e[tag=Test] run function nitijou_moti:player_data/item/ope1
execute if score @s[tag=Koukou] kaisuu matches 53..78 run execute as @e[tag=Test] run function nitijou_moti:player_data/item/ope1
execute if score @s[tag=Sennkou] kaisuu matches 79..101 run item replace block 41 82 -33 container.4 with minecraft:melon_slice{display:{Name:'{"text":"さくら餅"}',Lore:['{"text":"食べるとミニさくら餅が手に入る"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 79..101 run item replace block 41 82 -37 container.4 with minecraft:melon_slice{display:{Name:'{"text":"さくら餅"}',Lore:['{"text":"食べるとミニさくら餅が手に入る"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 102..124 run item replace block 41 82 -33 container.4 with minecraft:apple{display:{Name:'{"text":"しにがみ餅"}',Lore:['{"text":"ペナルティのジャンプが高くなる分、ポイント２倍"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 102..124 run item replace block 41 82 -37 container.4 with minecraft:apple{display:{Name:'{"text":"しにがみ餅"}',Lore:['{"text":"ペナルティのジャンプが高くなる分、ポイント２倍"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 125..147 run item replace block 41 82 -33 container.4 with minecraft:cooked_mutton{display:{Name:'{"text":"ペイント餅"}',Lore:['{"text":"ランダムでポイントが..."}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 125..147 run item replace block 41 82 -37 container.4 with minecraft:cooked_mutton{display:{Name:'{"text":"ペイント餅"}',Lore:['{"text":"ランダムでポイントが..."}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 148..170 run item replace block 41 82 -33 container.4 with minecraft:cooked_porkchop{display:{Name:'{"text":"クロノア餅"}',Lore:['{"text":"ひっくり返すタイミングを猫が教えてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 148..170 run item replace block 41 82 -37 container.4 with minecraft:cooked_porkchop{display:{Name:'{"text":"クロノア餅"}',Lore:['{"text":"ひっくり返すタイミングを猫が教えてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 171..193 run item replace block 41 82 -33 container.4 with minecraft:bread{display:{Name:'{"text":"トラゾー餅"}',Lore:['{"text":"腕がムキムキになってリロード短縮"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 171..193 run item replace block 41 82 -37 container.4 with minecraft:bread{display:{Name:'{"text":"トラゾー餅"}',Lore:['{"text":"腕がムキムキになってリロード短縮"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 194..216 run item replace block 41 82 -33 container.4 with minecraft:cooked_beef{display:{Name:'{"text":"イチゴ大福"}',Lore:['{"text":"３択の中から正解の臼が光る"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 194..216 run item replace block 41 82 -37 container.4 with minecraft:cooked_beef{display:{Name:'{"text":"イチゴ大福"}',Lore:['{"text":"３択の中から正解の臼が光る"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 217..239 run item replace block 41 82 -33 container.4 with minecraft:carrot{display:{Name:'{"text":"鏡餅"}',Lore:['{"text":"鏡餅をかぶり、焼きＭＡＸで餅が光る"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 217..239 run item replace block 41 82 -37 container.4 with minecraft:carrot{display:{Name:'{"text":"鏡餅"}',Lore:['{"text":"鏡餅をかぶり、焼きＭＡＸで餅が光る"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 240..254 run item replace block 41 82 -33 container.4 with minecraft:cooked_chicken{display:{Name:'{"text":"王の冠餅"}',Lore:['{"text":"伝説の..."}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 240..254 run item replace block 41 82 -37 container.4 with minecraft:cooked_chicken{display:{Name:'{"text":"王の冠餅"}',Lore:['{"text":"伝説の..."}']},CustomModelData:1} 2

execute if entity @e[tag=koge_1] run item replace block 41 82 -33 container.4 with minecraft:baked_potato{display:{Name:'{"text":"黒こげ餅"}',Lore:['{"text":"ポイントが真っ黒に"}']},CustomModelData:1} 2
execute if entity @e[tag=koge_2] run item replace block 41 82 -37 container.4 with minecraft:baked_potato{display:{Name:'{"text":"黒こげ餅"}',Lore:['{"text":"ポイントが真っ黒に"}']},CustomModelData:1} 2

execute if score @s[tag=Sennkou] kaisuu matches 52 run item replace block 41 82 -33 container.4 with minecraft:beetroot{display:{Name:'{"text":"ずんだ団子"}',Lore:['{"text":"イナリさんが現れ、+10Pしてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 52 run item replace block 41 82 -37 container.4 with minecraft:beetroot{display:{Name:'{"text":"ずんだ団子"}',Lore:['{"text":"イナリさんが現れ、+10Pしてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 108 run item replace block 41 82 -33 container.4 with minecraft:cooked_rabbit{display:{Name:'{"text":"きな粉団子"}',Lore:['{"text":"杵がエビフライに"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 108 run item replace block 41 82 -37 container.4 with minecraft:cooked_rabbit{display:{Name:'{"text":"きな粉団子"}',Lore:['{"text":"杵がエビフライに"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 121 run item replace block 41 82 -33 container.4 with minecraft:tropical_fish{display:{Name:'{"text":"黒ゴマ団子"}',Lore:['{"text":"黒ネコが現れ、+10Pしてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 121 run item replace block 41 82 -37 container.4 with minecraft:tropical_fish{display:{Name:'{"text":"黒ゴマ団子"}',Lore:['{"text":"黒ネコが現れ、+10Pしてくれる"}']},CustomModelData:1} 2
execute if score @s[tag=Sennkou] kaisuu matches 27 run item replace block 41 82 -33 container.4 with minecraft:pumpkin_pie{display:{Name:'{"text":"あんこ団子"}',Lore:['{"text":"毒でお腹が空腹に"}']},CustomModelData:1} 2
execute if score @s[tag=Koukou] kaisuu matches 27 run item replace block 41 82 -37 container.4 with minecraft:pumpkin_pie{display:{Name:'{"text":"あんこ団子"}',Lore:['{"text":"毒でお腹が空腹に"}']},CustomModelData:1} 2

scoreboard players add @s jump 1

scoreboard players operation @e[tag=Sennkou] kaisuu = @s[tag=Sennkou,scores={jump=1}] kaisuu
scoreboard players operation @e[tag=Koukou] kaisuu = @s[tag=Koukou,scores={jump=1}] kaisuu
