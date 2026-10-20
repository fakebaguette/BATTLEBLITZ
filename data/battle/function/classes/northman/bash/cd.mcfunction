execute if entity @a[tag=north_bash_cd] run schedule function battle:classes/northman/bash/cd 2t

scoreboard objectives add north_bash_cd dummy
scoreboard players add @a north_bash_cd 0

scoreboard players add @s[tag=north_bash_cd] north_bash_cd 1
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 1..149 run scoreboard players add @s north_bash_cd 1 
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 02 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"15","color":"dark_red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 10 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"14","color":"dark_red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 20 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"13","color":"dark_red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 30 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"12","color":"dark_red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 40 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"11","color":"dark_red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 50 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"10","color":"red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 60 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"9","color":"red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 70 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"8","color":"red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 80 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"7","color":"red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 90 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"6","color":"red"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 100 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"5","color":"gold"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 110 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"4","color":"gold"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 120 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"3","color":"gold"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 130 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"2","color":"yellow"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 140 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"1","color":"yellow"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 150 run title @s actionbar ["",{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" Cooldown - "},{"text":"READY","color":"green"}]
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 150 run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 1 0.8
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 150.. run advancement revoke @s only battle:northman/use
execute as @a[tag=north_bash_cd] at @s if score @s north_bash_cd matches 150.. run tag @s remove north_bash_cd
execute as @a at @s if score @s north_bash_cd matches 150.. run scoreboard players reset @s north_bash_cd