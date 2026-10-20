execute as @e[type=text_display,tag=prosp_box_text,scores={prosp_fall_time=0..}] at @s run function battle:classes/prospector/supply/item/spawn/time

execute as @e[type=text_display,tag=prosp_box_text,scores={prosp_fall_time=1..}] at @s run schedule function battle:classes/prospector/supply/item/spawn/loop 1t