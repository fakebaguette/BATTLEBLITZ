scoreboard objectives add cryo_stack_enemy dummy
scoreboard objectives add cryo_timer_enemy dummy

scoreboard players reset @s cryo_timer_enemy
scoreboard players add @s cryo_stack_enemy 1
execute if score @s cryo_stack_enemy matches 3.. run scoreboard players set @s cryo_stack_enemy 3

function battle:classes/magus/cryo/item/stack_change

effect give @s[scores={cryo_stack_enemy=1}] slowness 3 0 false
effect give @s[scores={cryo_stack_enemy=1}] slow_falling 3 0 false

effect give @s[scores={cryo_stack_enemy=2}] slowness 3 1 false
effect give @s[scores={cryo_stack_enemy=2}] slowness 6 0 false
effect give @s[scores={cryo_stack_enemy=2}] slow_falling 6 0 false

effect give @s[scores={cryo_stack_enemy=3}] mining_fatigue 2 3 false
effect give @s[scores={cryo_stack_enemy=3}] slowness 6 1 false
effect give @s[scores={cryo_stack_enemy=3}] slowness 9 0 false
effect give @s[scores={cryo_stack_enemy=3}] slow_falling 9 0 false

execute as @s[scores={cryo_stack_enemy=3}] at @s run summon block_display ~-1 ~ ~-1 {NoGravity:1b,Glowing:1b,view_range:2f,glow_color_override:4822262,Tags:["cryo_freeze"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.7f,2.3f,1.7f]},block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}
execute as @s[scores={cryo_stack_enemy=3}] at @s run fill ~ ~ ~ ~ ~ ~ powder_snow replace air
execute as @s[scores={cryo_stack_enemy=3}] at @s run particle flash{color:-1} ~ ~1 ~ 0 0 0 1 1
execute as @s[scores={cryo_stack_enemy=3}] at @s run playsound entity.breeze.idle_ground master @a ~ ~ ~ 2 0
execute as @s[scores={cryo_stack_enemy=3}] at @s run playsound block.glass.break master @a ~ ~ ~ 2 0.7