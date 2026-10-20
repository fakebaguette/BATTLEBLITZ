scoreboard objectives add light_eye_timer dummy
tag @s add light_eye_cd

scoreboard players set @s light_eye_timer 8
execute as @a[scores={light_eye_timer=1..},tag=light_eye_cd] at @s run function battle:classes/lightwielder/item_cd/cd