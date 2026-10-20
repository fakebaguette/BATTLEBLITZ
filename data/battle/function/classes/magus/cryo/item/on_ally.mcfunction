scoreboard objectives add cryo_stack_ally dummy
scoreboard objectives add cryo_timer_ally dummy

scoreboard players reset @s cryo_timer_ally
scoreboard players add @s cryo_stack_ally 1
execute if score @s cryo_stack_ally matches 3.. run scoreboard players set @s cryo_stack_ally 3

function battle:classes/magus/cryo/item/stack_change

effect give @s[scores={cryo_stack_ally=1}] speed 4 0 false

effect give @s[scores={cryo_stack_ally=2}] speed 8 0 false
effect give @s[scores={cryo_stack_ally=2}] absorption 4 0 false

effect give @s[scores={cryo_stack_ally=3}] speed 2 1 false
effect give @s[scores={cryo_stack_ally=3}] speed 12 0 false
effect give @s[scores={cryo_stack_ally=3}] absorption 4 0 false
effect give @s[scores={cryo_stack_ally=3}] absorption 8 0 false
effect give @s[scores={cryo_stack_ally=3}] regeneration 4 1 false