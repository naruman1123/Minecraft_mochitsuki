#execute as @e[tag=ou] run
give @s minecraft:apple{display:{Name:'{"text":"しにがみ餅"}',Lore:['{"text":"ペナルティのジャンプが高くなる分、ポイント２倍"}']},CustomModelData:1}
give @s minecraft:cooked_mutton{display:{Name:'{"text":"ぺいんと餅"}',Lore:['{"text":"ランダムでポイントが..."}']},CustomModelData:1}
give @s minecraft:bread{display:{Name:'{"text":"トラゾー餅"}',Lore:['{"text":"腕がムキムキになってリロード短縮"}']},CustomModelData:1}
give @s minecraft:cooked_porkchop{display:{Name:'{"text":"クロノア餅"}',Lore:['{"text":"ひっくり返すタイミングを猫が教えてくれる"}']},CustomModelData:1}
give @s minecraft:cod{display:{Name:'{"text":"あんこ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
give @s minecraft:salmon{display:{Name:'{"text":"きな粉餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
give @s minecraft:cooked_cod{display:{Name:'{"text":"ずんだ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
give @s minecraft:cooked_salmon{display:{Name:'{"text":"黒ゴマ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
give @s minecraft:cookie{display:{Name:'{"text":"ビートルート餅"}',Lore:['{"text":"ビートルート教団から50ポイントもらえる"}']},CustomModelData:1}
give @s minecraft:melon_slice{display:{Name:'{"text":"さくら餅"}',Lore:['{"text":"食べるとミニさくら餅が手に入る"}']},CustomModelData:1}
give @s minecraft:cooked_beef{display:{Name:'{"text":"イチゴ大福"}',Lore:['{"text":"３択の中から正解の臼が光る"}']},CustomModelData:1}
give @s minecraft:cooked_chicken{display:{Name:'{"text":"王の冠餅"}',Lore:['{"text":"GAME CLEAR!!"}']},CustomModelData:1}
give @s minecraft:carrot{display:{Name:'{"text":"鏡餅"}',Lore:['{"text":"鏡餅をかぶり、焼きＭＡＸで臼が光る"}']},CustomModelData:1}
give @s minecraft:baked_potato{display:{Name:'{"text":"黒こげ餅"}',Lore:['{"text":"ポイントが真っ黒に"}']},CustomModelData:1}
give @s minecraft:beetroot{display:{Name:'{"text":"ずんだ団子"}',Lore:['{"text":"イナリさんが現れ、+10Pしてくれる"}']},CustomModelData:1}
give @s minecraft:cooked_rabbit{display:{Name:'{"text":"きな粉団子"}',Lore:['{"text":"杵がエビフライに"}']},CustomModelData:1}
give @s minecraft:tropical_fish{display:{Name:'{"text":"黒ゴマ団子"}',Lore:['{"text":"黒ネコが現れ、+10Pしてくれる"}']},CustomModelData:1}
give @s minecraft:pumpkin_pie{display:{Name:'{"text":"あんこ団子"}',Lore:['{"text":"毒でお腹が空腹に"}']},CustomModelData:1}

title @a times 100s 20s 20s
title @a title {"text": "ゲームクリア！！","color": "red"}

scoreboard objectives remove cooked_chicken
tag @s remove ou
