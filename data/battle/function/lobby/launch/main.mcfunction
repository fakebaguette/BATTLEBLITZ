schedule function battle:lobby/launch/main 1t
scoreboard objectives add launchTime dummy

scoreboard players add @e[type=chicken,tag=launchRide] launchTime 1
scoreboard players add @a[scores={launchTime=0..}] launchTime 1
execute as @a[scores={launchTime=1}] at @s if score @e[type=chicken,tag=launchRide,sort=nearest,distance=..4,limit=1] launchTime = @s launchTime run ride @s mount @e[type=chicken,tag=launchRide,distance=..4,sort=nearest,limit=1]

execute as @a[scores={launchTime=20..}] run ride @s dismount
advancement revoke @a[scores={launchTime=20..}] only battle:launch/thing
scoreboard players reset @a[scores={launchTime=20..}] launchTime

execute as @a[scores={launchTime=0..}] at @s run particle wax_off ^ ^-0.5 ^-4 0.5 0.5 0.5 0.1 1 normal

execute as @e[type=chicken,tag=launchRide,scores={launchTime=20..}] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal
execute as @e[type=chicken,tag=launchRide,scores={launchTime=20..}] at @s run playsound entity.chicken.egg master @a[distance=..15] ~ ~ ~ 0.6 1.3
tp @e[type=chicken,tag=launchRide,scores={launchTime=20..}] ~ -64 ~
kill @e[type=chicken,tag=launchRide,scores={launchTime=25..}]