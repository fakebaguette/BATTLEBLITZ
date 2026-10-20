scoreboard objectives add legion_swipe_cd dummy
scoreboard players add @s legion_swipe_cd 1
execute as @a[scores={legion_swipe_cd=1..}] at @s run function battle:classes/legionnaire/swipe/cd/cd