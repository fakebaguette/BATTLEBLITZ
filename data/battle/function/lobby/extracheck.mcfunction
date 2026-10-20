schedule function battle:lobby/extracheck 1t

execute as @a[tag=!operator,tag=!inGame] at @e[type=interaction,tag=lobbyCorner] if entity @s[dx=700,dy=200,dz=700] run tag @s add inLobby
execute if entity @a[tag=inLobby] run function battle:lobby/check
tag @a[tag=operator] remove inLobby
tag @a[tag=operator] remove practicePvp
tag @a[tag=inGame] remove practicePvp
tag @a[tag=operator] remove inArchery
tag @a[tag=operator] remove inParkour