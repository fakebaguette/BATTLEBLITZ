tag @a[distance=..1.25,tag=!Team1,tag=!diedTp,gamemode=adventure] add trap_got_trapped

ride @s dismount

execute as @a[distance=..1.25,tag=trap_got_trapped,tag=!Team1] run damage @s 1 magic by @n[tag=trapshooter_class,tag=Team1]
effect give @a[distance=..1.25,tag=trap_got_trapped,tag=!Team1] blindness 2 0 false
effect give @a[distance=..1.25,tag=trap_got_trapped,tag=!Team1] slowness 2 1 true
effect give @a[distance=..1.25,tag=trap_got_trapped,tag=!Team1] glowing 10 0 true
tellraw @a[distance=..1.25,tag=trap_got_trapped,tag=!Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You stepped on","color":"red"},{"text":" ","color":"gold"},{"selector":"@n[tag=trapshooter_class,tag=Team1]"},{"text":"'s trap!","color":"red"}]
tellraw @a[tag=trapshooter_class,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@a[tag=trap_got_trapped,tag=!Team1]"},{"text":" ","color":"red"},{"text":"stepped on your trap!","color":"white"}]
playsound minecraft:entity.fox.bite master @a ~ ~ ~ 1 0.5
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0.5
function battle:classes/trapshooter/trap/expose
kill @e[tag=wt,distance=..1]
kill @s