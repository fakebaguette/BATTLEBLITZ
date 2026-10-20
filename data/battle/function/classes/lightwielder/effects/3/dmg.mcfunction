damage @s[tag=!Team1] 10 magic by @a[sort=nearest,limit=1,tag=Team1,tag=lightwielder_class]
damage @s[tag=!Team2] 10 magic by @a[sort=nearest,limit=1,tag=Team2,tag=lightwielder_class]

effect give @s blindness 1 0
effect give @s slowness 3 2
effect give @s glowing 3 0
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 0
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 0
tag @s remove light_got_hit