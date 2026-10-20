schedule function battle:other/hp_display/main 1t

scoreboard objectives add hp_display dummy
scoreboard objectives add mob_health dummy
scoreboard objectives add health health

scoreboard objectives setdisplay below_name hp_display
scoreboard objectives modify hp_display rendertype integer
scoreboard objectives modify hp_display displayname ""

execute as @e[type=#battle:pets] store result score @s mob_health run data get entity @s Health
scoreboard players reset @a mob_health

#Handle decimals (round up at 0)
scoreboard players set .1 mob_health 1
execute as @e[scores={mob_health=0}] run scoreboard players operation @s mob_health += .1 mob_health

#Seacharger
execute as @e[tag=seach_hp_bar] at @s as @n[type=nautilus,scores={mob_health=-10..}] run scoreboard players display numberformat @n[tag=seach_hp_bar] hp_display fixed ["",{"score":{"name":"@s","objective":"mob_health"}}," [",{"text":"HP","color":"green"},"]"]

#Mob HP
execute as @e[scores={mob_health=-10..}] at @s run scoreboard players display numberformat @s hp_display fixed ["",{"score":{"name":"@s","objective":"mob_health"}}," [",{"text":"HP","color":"green"},"]"]
execute as @e[scores={mob_health=-10..}] at @s run scoreboard players operation @s hp_display = @s mob_health

#Player HP
execute as @a at @s run function battle:other/hp_display/1-get_name