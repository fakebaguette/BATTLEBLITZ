schedule function battle:lobby/detect 10t

execute if entity @a[tag=inLobby] run function battle:lobby/enablefunction/lobby
execute unless entity @a[tag=inLobby] run function battle:lobby/disablefunction/lobby

execute if entity @a[tag=inArchery] run function battle:lobby/enablefunction/archery
execute unless entity @a[tag=inArchery] run function battle:lobby/disablefunction/archery

execute if entity @a[tag=practicePvp] run function battle:lobby/enablefunction/pvp
execute unless entity @a[tag=practicePvp] run function battle:lobby/disablefunction/pvp

execute as @e[tag=classesRoom,limit=1] at @s if entity @a[tag=inLobby,distance=..40] run function battle:lobby/enablefunction/class
execute as @e[tag=classesRoom,limit=1] at @s unless entity @a[tag=inLobby,distance=..40] run function battle:lobby/disablefunction/class

execute as @e[tag=toggleSettings,limit=1] at @s if entity @a[tag=inLobby,distance=..30] run function battle:lobby/enablefunction/settings
execute as @e[tag=toggleSettings,limit=1] at @s unless entity @a[tag=inLobby,distance=..30] run function battle:lobby/disablefunction/settings

execute as @e[tag=creditsClickSmall] at @s if entity @a[tag=inLobby,distance=..30] run function battle:lobby/enablefunction/credits
execute as @e[tag=creditsClickSmall] at @s unless entity @a[tag=inLobby,distance=..40] run function battle:lobby/disablefunction/credits

execute as @e[tag=tutorialClick] at @s if entity @a[distance=..20] run function battle:lobby/tutorial/click
execute as @e[tag=tutorialClick] at @s unless entity @a[distance=..20] run schedule clear battle:lobby/tutorial/click