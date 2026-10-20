damage @s[tag=!Team1] 4 player_attack by @a[scores={legion_bash_time=2..8},tag=Team1,sort=nearest,limit=1]
damage @s[tag=!Team2] 4 player_attack by @a[scores={legion_bash_time=2..8},tag=Team2,sort=nearest,limit=1]
effect give @s slowness 1 0 false
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1.3
tag @s remove legion_bashed