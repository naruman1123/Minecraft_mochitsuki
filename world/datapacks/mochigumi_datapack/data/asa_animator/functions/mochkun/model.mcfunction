function #asa_matrix:matrix
execute as @e[type=armor_stand,tag=mochkunParts,tag=mochkun,limit=1] rotated ~ 0 run tp @s 50.5 83.0 -35.5
execute as @e[type=armor_stand,tag=mochkunParts,tag=mochkun,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=mochkunParts,tag=mochkun,limit=1] run function #asa_matrix:matrix_node
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -451
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=mochkunParts,tag=mochkun_lefthand,limit=1] run function #asa_matrix:set_child_pos
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix -100
scoreboard players set #asa_child_pos_z AsaMatrix 1000
function #asa_matrix:rotate
execute as @e[type=armor_stand,tag=mochkunParts,tag=KinoUsu,limit=1] run function #asa_matrix:set_child_pos
execute as @e[type=armor_stand,tag=mochkunParts,tag=moch,limit=1] rotated ~ 0 run tp @s 50.5 82.2 -34.5
execute as @e[type=armor_stand,tag=mochkunParts,tag=moch,limit=1] at @s run function #asa_matrix:get_parent_pos
execute as @e[type=armor_stand,tag=mochkunParts,tag=moch,limit=1] run function #asa_matrix:matrix_node