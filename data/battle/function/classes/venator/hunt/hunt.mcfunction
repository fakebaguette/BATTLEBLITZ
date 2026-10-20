execute if entity @s[tag=venator_class,tag=Team1] run tag @a[tag=Team2] remove vena_target
execute if entity @s[tag=venator_class,tag=Team1] run tag @a[tag=Team2,sort=random,limit=1,tag=!diedTp] add vena_target

execute if entity @s[tag=venator_class,tag=Team2] run tag @a[tag=Team1] remove vena_target
execute if entity @s[tag=venator_class,tag=Team2] run tag @a[tag=Team1,sort=random,limit=1,tag=!diedTp] add vena_target

execute as @a[tag=vena_target] at @s run function battle:classes/venator/hunt/effect/effect

function battle:classes/venator/hunt/glow

#the hunted
execute if entity @a[tag=vena_target,tag=Team2] if entity @s[tag=venator_class,tag=Team1] run tellraw @a[tag=vena_target,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You are now being ","color":"white"},{"text":"hunted","color":"red"},{"text":" by ","color":"white"},{"selector":"@a[tag=venator_class,tag=Team1]"},{"color":"white","text":". You will "},{"text":"glow","color":"yellow"},{"text":" periodically.","color":"white"}]
execute if entity @a[tag=vena_target,tag=Team1] if entity @s[tag=venator_class,tag=Team2] run tellraw @a[tag=vena_target,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You are now being ","color":"white"},{"text":"hunted","color":"red"},{"text":" by ","color":"white"},{"selector":"@a[tag=venator_class,tag=Team2]"},{"color":"white","text":". You will "},{"text":"glow","color":"yellow"},{"text":" periodically.","color":"white"}]

#venator
execute if entity @a[tag=vena_target,tag=Team2] as @s[tag=venator_class,tag=Team1] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You are now ","color":"white"},{"text":"hunting","color":"red"},{"text":" ","color":"white"},{"selector":"@a[tag=vena_target,tag=Team2]"},{"color":"white","text":". They will "},{"text":"glow","color":"yellow"},{"text":" periodically.","color":"white"}]
execute if entity @a[tag=vena_target,tag=Team1] as @s[tag=venator_class,tag=Team2] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You are now ","color":"white"},{"text":"hunting","color":"red"},{"text":" ","color":"white"},{"selector":"@a[tag=vena_target,tag=Team1]"},{"color":"white","text":". They will "},{"text":"glow","color":"yellow"},{"text":" periodically.","color":"white"}]