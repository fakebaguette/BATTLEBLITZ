execute at @a[tag=inGame] at @e[type=text_display,tag=jumpPad,sort=nearest,distance=..20] run schedule function battle:ingame/pads/jump/check 1t

execute at @a[tag=inGame] as @e[type=text_display,tag=jumpPad,sort=nearest,distance=..20] at @s run function battle:ingame/pads/jump/main