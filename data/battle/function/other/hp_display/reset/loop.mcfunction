execute store result storage hp_reset i int 1 run scoreboard players get .i hp_reset
function battle:other/hp_display/reset/remove with storage hp_reset

scoreboard players remove .i hp_reset 1

execute if score .i hp_reset matches 0.. run function battle:other/hp_display/reset/loop
execute if score .i hp_reset matches ..0 run scoreboard players reset .i hp_reset