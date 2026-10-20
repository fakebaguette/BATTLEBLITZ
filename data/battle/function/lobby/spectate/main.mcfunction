schedule function battle:lobby/spectate/main 5t

execute unless entity @a[tag=inGame] as @a[tag=lobbySpectate] run scoreboard objectives remove triggerSpectate
execute as @a[tag=lobbySpectate,scores={triggerSpectate=1..}] run function battle:lobby/spectate/return
execute unless entity @a[tag=inGame] as @a[tag=lobbySpectate] run function battle:lobby/spectate/return

execute if score .toggle toggleMap matches 1 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map1Corner] unless entity @s[dx=80,dy=70,dz=80] at @e[type=interaction,tag=5x5center,tag=map1] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 2 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map2Corner] unless entity @s[dx=45,dy=30,dz=45] at @e[type=interaction,tag=5x5center,tag=map2] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 3 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map3Corner] unless entity @s[dx=-150,dy=100,dz=-150] at @e[type=interaction,tag=5x5center,tag=map3] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 4 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map4Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map4] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 5 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map5Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map5] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 6 if entity @a[tag=Participant] as @a[tag=lobbySpectate] at @e[type=interaction,tag=map6Corner] unless entity @s[dx=150,dy=120,dz=200] at @e[type=interaction,tag=5x5center,tag=map6] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 1 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map1Corner] unless entity @s[dx=64,dy=70,dz=64] at @e[type=interaction,tag=5x5center,tag=map1] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 2 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map2Corner] unless entity @s[dx=45,dy=30,dz=45] at @e[type=interaction,tag=5x5center,tag=map2] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 3 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map3Corner] unless entity @s[dx=-150,dy=100,dz=-150] at @e[type=interaction,tag=5x5center,tag=map3] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 4 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map4Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map4] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 5 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map5Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map5] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 6 as @a[tag=Participant,tag=diedTp] at @e[type=interaction,tag=map6Corner] unless entity @s[dx=150,dy=120,dz=200] at @e[type=interaction,tag=5x5center,tag=map6] run tp @s ~ ~3 ~

gamemode spectator @a[tag=lobbySpectate]