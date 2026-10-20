scoreboard players add @s north_bash_time 1
execute if entity @a[scores={north_bash_time=1..9}] run schedule function battle:classes/northman/bash/bash 1t

scoreboard objectives add north_bash_time dummy
scoreboard players add @a[scores={north_bash_time=1..9}] north_bash_time 1

execute as @a[scores={north_bash_time=2}] at @s run playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 0.8 0.8
execute as @a[scores={north_bash_time=2}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0
execute as @a[scores={north_bash_time=2}] at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8
execute as @a[scores={north_bash_time=2}] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.8 0.8
execute as @a[scores={north_bash_time=2}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0
execute as @a[scores={north_bash_time=2}] at @s run effect give @s speed 2 1 true
execute as @a[scores={north_bash_time=2}] at @s run tp @s ~ ~.5 ~
execute as @a[scores={north_bash_time=2..10}] at @s run tp @s ~ ~.2 ~ ~ 0
execute as @a[scores={north_bash_time=2..10}] at @s if block ^ ^ ^1 #battle:nonsolids run tp @s ^ ^ ^1
execute as @a[scores={north_bash_time=2..10}] at @s run particle minecraft:wax_off ^ ^1 ^-0.3 0.5 0.8 0.5 1 20
execute as @a[scores={north_bash_time=2..10}] at @s run particle minecraft:snowflake ^ ^1 ^-0.3 0.5 0.8 0.5 0 20
execute as @a[scores={north_bash_time=2..10}] at @s run particle poof ^ ^1 ^-0.3 0.5 0.8 0.5 0 5
execute as @a[scores={north_bash_time=2..10},tag=Team1] at @s run tag @a[distance=..1.5,tag=!Team1] add north_got_bashed
execute as @a[scores={north_bash_time=2..10},tag=Team2] at @s run tag @a[distance=..1.5,tag=!Team2] add north_got_bashed

execute as @a[scores={north_bash_time=2..},tag=Team1] at @s if entity @a[tag=north_got_bashed,tag=Team2,distance=..5] run scoreboard players set @s north_bash_time 10
execute as @a[scores={north_bash_time=2..},tag=Team2] at @s if entity @a[tag=north_got_bashed,tag=Team1,distance=..5] run scoreboard players set @s north_bash_time 10

execute as @a[tag=north_got_bashed] at @s run function battle:classes/northman/bash/bashed

execute as @a[scores={north_bash_time=10..}] at @s run function battle:classes/northman/bash/item_cd/loop