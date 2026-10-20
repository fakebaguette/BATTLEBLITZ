execute if entity @e[scores={cryo_stack_ally=1..}] run schedule function battle:classes/magus/cryo/item/stack_loop 1t
execute if entity @e[scores={cryo_stack_enemy=1..}] run schedule function battle:classes/magus/cryo/item/stack_loop 1t

#Stack 3 runs out 2x as fast!
execute as @e[scores={cryo_stack_ally=1..3}] run scoreboard players add @s cryo_timer_ally 1
execute as @e[scores={cryo_stack_enemy=1..3}] run scoreboard players add @s cryo_timer_enemy 1

execute as @e[scores={cryo_stack_enemy=1..},tag=!diedTp] at @s run particle snowflake ~ ~1 ~ 0.3 0.3 0.3 0.1 1 normal @a

execute as @e[scores={cryo_stack_ally=1..},tag=!diedTp] at @s run particle enchant ~ ~1 ~ 0.3 0.3 0.3 0.2 1 normal @a
execute as @e[scores={cryo_stack_ally=3},tag=!diedTp] at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 1 normal @a

execute as @e[scores={cryo_timer_enemy=1..40,cryo_stack_enemy=3},tag=!diedTp] at @s run tp @s @s

execute as @e[scores={cryo_timer_enemy=40..,cryo_stack_enemy=3}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace powder_snow
execute as @e[scores={cryo_timer_enemy=40..,cryo_stack_enemy=3}] at @s run kill @n[type=block_display,tag=cryo_freeze,distance=..2]

execute as @e[scores={cryo_timer_enemy=60..,cryo_stack_enemy=1..}] at @s run scoreboard players remove @s cryo_stack_enemy 1
execute as @e[scores={cryo_timer_ally=80..,cryo_stack_ally=1..}] at @s run scoreboard players remove @s cryo_stack_ally 1

execute as @e[scores={cryo_timer_enemy=60..}] run function battle:classes/magus/cryo/item/stack_change
execute as @e[scores={cryo_timer_ally=80..}] run function battle:classes/magus/cryo/item/stack_change

execute as @e[scores={cryo_timer_enemy=60..}] run scoreboard players reset @s cryo_timer_enemy
execute as @e[scores={cryo_timer_ally=80..}] run scoreboard players reset @s cryo_timer_ally