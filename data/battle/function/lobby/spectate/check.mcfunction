execute if entity @a[tag=inGame] as @s[tag=inLobby,tag=!inGame,nbt={Inventory:[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{NoDrop:1b,lobbySpectate:1b}}}]}] run function battle:lobby/spectate/spectate
execute if entity @a[tag=inGame] as @s[tag=inLobby,tag=inGame,nbt={Inventory:[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{NoDrop:1b,lobbySpectate:1b}}}]}] run tellraw @s ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You ",{"text":"can't","color":"red"}," spectate your own game."]
execute if entity @a[tag=inGame] as @s[tag=inLobby,tag=inGame,nbt={Inventory:[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{NoDrop:1b,lobbySpectate:1b}}}]}] run playsound block.note_block.pling master @s ~ ~ ~ 10 1.9

execute unless entity @a[tag=inGame] as @s[tag=inLobby,tag=!inGame,nbt={Inventory:[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{NoDrop:1b,lobbySpectate:1b}}}]}] run tellraw @s ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| There ",{"text":"isn't","color":"red"}," an ongoing game currently."]
execute unless entity @a[tag=inGame] as @s[tag=inLobby,tag=!inGame,nbt={Inventory:[{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{NoDrop:1b,lobbySpectate:1b}}}]}] run playsound block.note_block.pling master @s ~ ~ ~ 10 1.9

clear @s ender_eye[custom_data={NoDrop:1b,lobbySpectate:1b}]
advancement revoke @s only battle:spectate/eye