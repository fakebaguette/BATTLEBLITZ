advancement revoke @s only battle:conjurer/cycle_bool
advancement revoke @s only battle:conjurer/fang
advancement revoke @s only battle:conjurer/levit
advancement revoke @s only battle:conjurer/vine
advancement revoke @s only battle:conjurer/life
advancement revoke @s only battle:conjurer/swap

scoreboard players reset @s conj_count
scoreboard players reset @s conj_swap_cd
scoreboard players reset @s conj_use_cd
scoreboard players reset * vine_ID
scoreboard players reset * vine_PID

#clear @s blue_dye
#clear @s lime_dye
#clear @s yellow_dye
#clear @s red_dye

tag @s remove conj_up
tag @s remove conjl_fangs
tag @s remove conjl_levit
tag @s remove conjl_life
tag @s remove conjl_vines
tag @s remove fang_gravity
tag @s remove levit_hit