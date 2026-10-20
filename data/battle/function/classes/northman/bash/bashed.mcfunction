damage @s[tag=!Team1] 4 player_attack by @a[scores={north_bash_time=2..10},tag=Team1,sort=nearest,limit=1]
damage @s[tag=!Team2] 4 player_attack by @a[scores={north_bash_time=2..10},tag=Team2,sort=nearest,limit=1]
effect give @s slowness 3 3 false
effect give @s blindness 1 0 true
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.8
tag @s remove north_got_bashed