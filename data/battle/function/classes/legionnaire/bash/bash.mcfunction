tag @s remove legion_can_bash
advancement revoke @s only battle:legionnaire/bash

scoreboard players add @s legion_bash_time 1
execute if entity @a[scores={legion_bash_time=1..7}] run schedule function battle:classes/legionnaire/bash/bash 1t

scoreboard objectives add legion_bash_time dummy
scoreboard players add @a[scores={legion_bash_time=1..7}] legion_bash_time 1

execute as @a[scores={legion_bash_time=2}] at @s run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 0.8 0.6
execute as @a[scores={legion_bash_time=2}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0
execute as @a[scores={legion_bash_time=2}] at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8

execute as @a[scores={legion_bash_time=2}] at @s run tp @s ~ ~.25 ~
execute as @a[scores={legion_bash_time=2..8}] at @s run tp @s ~ ~.1 ~ ~ 0
execute as @a[scores={legion_bash_time=2..8}] at @s if block ^ ^ ^0.5 #battle:nonsolids run tp @s ^ ^ ^0.5
execute as @a[scores={legion_bash_time=2..8}] at @s run particle minecraft:enchanted_hit ^ ^0.25 ^-0.3 0.5 0.5 0.5 1 5
execute as @a[scores={legion_bash_time=2..8}] at @s run particle minecraft:crit ^ ^0.25 ^-0.3 0.5 0.5 0.5 1 5
execute as @a[scores={legion_bash_time=2..8}] at @s run particle poof ^ ^0.25 ^-0.3 0.5 0.5 0.5 0 2
execute as @a[scores={legion_bash_time=2..8},tag=Team1] at @s run tag @a[distance=..1.5,tag=!Team1] add legion_bashed
execute as @a[scores={legion_bash_time=2..8},tag=Team2] at @s run tag @a[distance=..1.5,tag=!Team2] add legion_bashed

execute as @a[scores={legion_bash_time=2..8},tag=Team1] at @s run tag @e[type=#battle:pets,distance=..1.5,tag=!mob_Team1] add legion_bashed
execute as @a[scores={legion_bash_time=2..8},tag=Team2] at @s run tag @e[type=#battle:pets,distance=..1.5,tag=!mob_Team2] add legion_bashed

execute as @e[tag=legion_bashed] at @s run function battle:classes/legionnaire/bash/bashed
execute as @e[tag=legion_bashed] at @s as @a[scores={legion_bash_time=2..},distance=..1.5] run scoreboard players set @s legion_bash_time 10

scoreboard players reset @a[scores={legion_bash_time=8..}] legion_bash_time
