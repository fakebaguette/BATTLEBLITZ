scoreboard objectives add conj_swap_cd dummy
scoreboard players add @s conj_swap_cd 1
execute as @a[scores={conj_swap_cd=1..}] at @s run function battle:classes/conjurer/cycle/cd/cd