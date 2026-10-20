execute if entity @e[type=interaction,tag=5x5center,distance=..5] run fill ~2 ~1 ~2 ~-2 ~-2 ~-2 air replace #battle:prosp_concrete
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle entity_effect{color:[1.000,0.976,0.671,1.00]} ~ ~ ~ 1 1 1 1 500 normal @a
particle dust{color:[0.906,1.000,0.278],scale:2} ~ ~ ~ 2 2 2 0.1 50 normal @a
particle falling_dust{block_state:"sand"} ~ ~ ~ 2 2 2 0.1 50 normal @s
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a

execute as @s[tag=prosp_tnt_T1,scores={prosp_tnt_time=30..}] at @s as @a[distance=..2.5,tag=!Team1] run effect give @s mining_fatigue 3 1 false
execute as @s[tag=prosp_tnt_T2,scores={prosp_tnt_time=30..}] at @s as @a[distance=..2.5,tag=!Team2] run effect give @s mining_fatigue 3 1 false

execute as @s[tag=prosp_tnt_T1,scores={prosp_tnt_time=30..}] at @s as @e[type=#battle:pets,distance=..2.5,tag=!mob_Team1] run effect give @s mining_fatigue 3 1 false
execute as @s[tag=prosp_tnt_T2,scores={prosp_tnt_time=30..}] at @s as @e[type=#battle:pets,distance=..2.5,tag=!mob_Team2] run effect give @s mining_fatigue 3 1 false

execute as @s[tag=prosp_tnt_T1] at @s as @a[distance=..2.5,tag=!Team1] run damage @s 6 player_attack by @n[tag=prospector_class,tag=Team1]
execute as @s[tag=prosp_tnt_T2] at @s as @a[distance=..2.5,tag=!Team2] run damage @s 6 player_attack by @n[tag=prospector_class,tag=Team2]

execute as @s[tag=prosp_tnt_T1] at @s as @e[type=#battle:pets,distance=..2.5,tag=!mob_Team1] run damage @s 6 player_attack by @n[tag=prospector_class,tag=Team1]
execute as @s[tag=prosp_tnt_T2] at @s as @e[type=#battle:pets,distance=..2.5,tag=!mob_Team2] run damage @s 6 player_attack by @n[tag=prospector_class,tag=Team2]

execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s