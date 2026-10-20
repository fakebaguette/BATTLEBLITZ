execute at @a[tag=inGame] at @e[type=text_display,tag=speedPad,sort=nearest,distance=..20] run schedule function battle:ingame/pads/speed/check 1t

execute at @a[tag=inGame] as @e[type=text_display,tag=speedPad,sort=nearest,distance=..20] at @s run function battle:ingame/pads/speed/main