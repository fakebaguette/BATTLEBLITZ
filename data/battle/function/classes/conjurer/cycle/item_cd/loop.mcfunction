scoreboard objectives add conj_use_cd dummy
scoreboard players set @s conj_use_cd 10
execute as @a[scores={conj_use_cd=1..}] at @s run function battle:classes/conjurer/cycle/item_cd/cd