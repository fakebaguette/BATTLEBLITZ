scoreboard objectives add trap_itemCD dummy
scoreboard players add @s trap_itemCD 1
execute as @a[scores={trap_itemCD=1..}] at @s run function battle:classes/trapshooter/trap/cd/cd