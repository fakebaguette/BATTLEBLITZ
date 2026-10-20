damage @s[tag=!Team1] 4 player_attack by @a[tag=legionnaire_class,tag=Team1,sort=nearest,limit=1]
damage @s[tag=!Team2] 4 player_attack by @a[tag=legionnaire_class,tag=Team2,sort=nearest,limit=1]
execute at @s run playsound entity.player.attack.knockback master @a ~ ~ ~ 1 0.8
effect give @s slowness 2 0


execute as @s[type=player] at @s summon snowball run function battle:classes/legionnaire/swipe/apply