damage @s[tag=!Team1] 7 magic by @a[sort=nearest,limit=1,tag=Team1,tag=lightwielder_class]
damage @s[tag=!Team2] 7 magic by @a[sort=nearest,limit=1,tag=Team2,tag=lightwielder_class]

effect give @s blindness 1 0
effect give @s slowness 2 1
effect give @s glowing 2 0
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 1.1
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 1.1
tag @s remove light_got_hit