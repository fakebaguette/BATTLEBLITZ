function battle:classes/legionnaire/swipe/item_cd/loop
tag @s add legion_can_bash
advancement revoke @s only battle:legionnaire/bash

execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
execute at @s run playsound entity.player.attack.crit master @a ~ ~ ~ 1 1.4

execute at @s[tag=Team1] run summon interaction ^-1.5 ^1 ^1.5 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT1"]}
execute at @s[tag=Team1] run summon interaction ^-1.25 ^1 ^1.75 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT1"]}
execute at @s[tag=Team1] run summon interaction ^ ^1 ^2 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT1"]}
execute at @s[tag=Team1] run summon interaction ^1.25 ^1 ^1.75 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT1"]}
execute at @s[tag=Team1] run summon interaction ^1.5 ^1 ^1.5 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT1"]}

execute at @s[tag=Team2] run summon interaction ^-1.5 ^1 ^1.5 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT2"]}
execute at @s[tag=Team2] run summon interaction ^-1.25 ^1 ^1.75 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT2"]}
execute at @s[tag=Team2] run summon interaction ^ ^1 ^2 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT2"]}
execute at @s[tag=Team2] run summon interaction ^1.25 ^1 ^1.75 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT2"]}
execute at @s[tag=Team2] run summon interaction ^1.5 ^1 ^1.5 {width: 0.5, height: 0.5, Tags: ["legion_swipe_hitbox","legion_swipe_hitboxT2"]}

execute as @e[type=interaction,tag=legion_swipe_hitbox,tag=legion_swipe_hitboxT1] at @s as @a[tag=!Team1,distance=..2.5] at @s run function battle:classes/legionnaire/swipe/on_target
execute as @e[type=interaction,tag=legion_swipe_hitbox,tag=legion_swipe_hitboxT2] at @s as @a[tag=!Team2,distance=..2.5] at @s run function battle:classes/legionnaire/swipe/on_target

execute as @e[type=interaction,tag=legion_swipe_hitbox,tag=legion_swipe_hitboxT1] at @s as @e[type=#battle:pets,tag=!mob_Team1,distance=..2.5] at @s run function battle:classes/legionnaire/swipe/on_target
execute as @e[type=interaction,tag=legion_swipe_hitbox,tag=legion_swipe_hitboxT2] at @s as @e[type=#battle:pets,tag=!mob_Team2,distance=..2.5] at @s run function battle:classes/legionnaire/swipe/on_target

execute as @e[type=interaction,tag=legion_swipe_hitbox] at @s run particle sweep_attack ~ ~ ~ 0 0 0 0.1 1
execute as @e[type=interaction,tag=legion_swipe_hitbox] run kill @s