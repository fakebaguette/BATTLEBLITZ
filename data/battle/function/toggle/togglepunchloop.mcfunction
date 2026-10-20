schedule function battle:toggle/togglepunchloop 10t

execute if score .toggle togglePunch matches 1 at @e[type=interaction,tag=lobby] run effect give @a[distance=..60,tag=!practicePvp] weakness 1 255 true