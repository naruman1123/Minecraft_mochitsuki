#execute if score @s itemrandom matches 0..9 run execute as @s[scores={kaisuu=53..78}] ru
execute if score @s itemrandom matches 0..1 run execute if entity @e[tag=Sennkou] run item replace block 41 82 -33 container.4 with minecraft:cod{display:{Name:'{"text":"あんこ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 2..3 run execute if entity @e[tag=Sennkou] run item replace block 41 82 -33 container.4 with minecraft:salmon{display:{Name:'{"text":"きな粉餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 4..5 run execute if entity @e[tag=Sennkou] run item replace block 41 82 -33 container.4 with minecraft:cooked_cod{display:{Name:'{"text":"ずんだ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 6..7 run execute if entity @e[tag=Sennkou] run item replace block 41 82 -33 container.4 with minecraft:cooked_salmon{display:{Name:'{"text":"黒ゴマ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}

execute if score @s itemrandom matches 0..1 run execute if entity @e[tag=Koukou] run item replace block 41 82 -37 container.4 with minecraft:cod{display:{Name:'{"text":"あんこ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 2..3 run execute if entity @e[tag=Koukou] run item replace block 41 82 -37 container.4 with minecraft:salmon{display:{Name:'{"text":"きな粉餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 4..5 run execute if entity @e[tag=Koukou] run item replace block 41 82 -37 container.4 with minecraft:cooked_cod{display:{Name:'{"text":"ずんだ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}
execute if score @s itemrandom matches 6..7 run execute if entity @e[tag=Koukou] run item replace block 41 82 -37 container.4 with minecraft:cooked_salmon{display:{Name:'{"text":"黒ゴマ餅"}',Lore:['{"text":"食べるとお腹が満たされる"}']},CustomModelData:1}

execute if score @s itemrandom matches 8..9 run kill @e[tag=itemAEC1]

execute if score @s itemrandom matches 8..9 run function nitijou_moti:player_data/item/ope1
