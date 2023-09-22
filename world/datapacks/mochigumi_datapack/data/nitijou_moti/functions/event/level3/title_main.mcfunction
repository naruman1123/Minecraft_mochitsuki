#execute as @e[tag=player,tag=!tf_lv3_main] at @s run

title @s times 5 20 5
title @s[scores={game_timer=1242}] title {"text":"Round ”1”","bold": true,"color":"red"}
title @s[scores={game_timer=1242},tag=lv3_player] subtitle {"text":"Your turn","bold": true,"color":"red"}
execute if entity @e[scores={game_timer=1242}] run scoreboard players reset @a use_bow

title @s[scores={game_timer=1442}] title {"text":"Round ”2”","bold": true,"color":"red"}
title @s[scores={game_timer=1442},tag=lv3_player] subtitle {"text":"Your turn","bold": true,"color":"red"}
execute if entity @e[scores={game_timer=1442}] run scoreboard players reset @a use_bow

title @s[scores={game_timer=1642}] title {"text":"Round ”3”","bold": true,"color":"red"}
title @s[scores={game_timer=1642},tag=lv3_player] subtitle {"text":"Your turn","bold": true,"color":"red"}
execute if entity @e[scores={game_timer=1642}] run scoreboard players reset @a use_bow

title @s[scores={game_timer=1842}] title {"text":"Round ”4”","bold": true,"color":"red"}
title @s[scores={game_timer=1842},tag=lv3_player] subtitle {"text":"Your turn","bold": true,"color":"red"}
execute if entity @e[scores={game_timer=1842}] run scoreboard players reset @a use_bow
