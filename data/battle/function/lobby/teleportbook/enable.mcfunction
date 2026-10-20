schedule function battle:lobby/teleportbook/enable 1t

scoreboard objectives add tpGameSettings trigger
scoreboard objectives add tpClassInfo trigger
scoreboard objectives add tpTutorial trigger
scoreboard objectives add tpCosmetics trigger
scoreboard objectives add tpCredits trigger
scoreboard objectives add tpPVP trigger
scoreboard objectives add tpArchery trigger
scoreboard objectives add tpParkour trigger

scoreboard players enable @a[tag=inLobby] tpGameSettings
scoreboard players enable @a[tag=inLobby] tpClassInfo
scoreboard players enable @a[tag=inLobby] tpTutorial
scoreboard players enable @a[tag=inLobby] tpCosmetics
scoreboard players enable @a[tag=inLobby] tpCredits
scoreboard players enable @a[tag=inLobby] tpPVP
scoreboard players enable @a[tag=inLobby] tpArchery
scoreboard players enable @a[tag=inLobby] tpParkour

execute as @a[scores={tpGameSettings=1..}] at @s run function battle:lobby/teleportbook/gamesettings
execute as @a[scores={tpClassInfo=1..}] at @s run function battle:lobby/teleportbook/classinfo
execute as @a[scores={tpTutorial=1..}] at @s run function battle:lobby/teleportbook/tutorial
execute as @a[scores={tpCosmetics=1..}] at @s run function battle:lobby/teleportbook/cosmetics
execute as @a[scores={tpCredits=1..}] at @s run function battle:lobby/teleportbook/credits
execute as @a[scores={tpPVP=1..}] at @s run function battle:lobby/teleportbook/pvp
execute as @a[scores={tpArchery=1..}] at @s run function battle:lobby/teleportbook/archery
execute as @a[scores={tpParkour=1..}] at @s run function battle:lobby/teleportbook/parkour