schedule function battle:lobby/practicedeath/main 1t

scoreboard objectives add playerDiedIntPractice deathCount
scoreboard objectives add hpIntPractice health
scoreboard objectives add killerPractice playerKillCount

scoreboard players reset @a[tag=!inGame] playerDiedInt
scoreboard players reset @a[tag=!inGame] killer
tag @a[tag=!inGame] remove deadPlayer

scoreboard players reset @a[tag=inGame] playerDiedIntPractice
scoreboard players reset @a[tag=inGame] killerPractice

scoreboard players reset @a[tag=!inLobby] playerDiedIntPractice
scoreboard players reset @a[tag=!inLobby] killerPractice

execute as @a[scores={playerDiedIntPractice=1..,hpIntPractice=1..}] run function battle:lobby/practicedeath/died
