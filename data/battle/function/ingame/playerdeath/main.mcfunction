schedule function battle:ingame/playerdeath/main 1t

scoreboard objectives add playerDiedInt deathCount
scoreboard objectives add hpInt health
scoreboard objectives add killer playerKillCount

scoreboard players reset @a[tag=!inGame] playerDiedInt
scoreboard players reset @a[tag=!inGame] killer
tag @a[tag=!inGame] remove deadPlayer

scoreboard players reset @a[tag=Participant] playerDiedIntPractice
scoreboard players reset @a[tag=Participant] killerPractice
tag @a[tag=Participant] remove deadPlayerPractice

execute as @a[limit=1,scores={playerDiedInt=1..,hpInt=1..},tag=inGame] at @s run function battle:ingame/playerdeath/died