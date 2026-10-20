damage @s[tag=!Team1] 4 magic by @a[sort=nearest,limit=1,tag=Team1,tag=lightwielder_class]
damage @s[tag=!Team2] 4 magic by @a[sort=nearest,limit=1,tag=Team2,tag=lightwielder_class]

effect give @s blindness 1 0
effect give @s slowness 1 1
effect give @s glowing 1 0
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 1.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 1.5
tag @s remove light_got_hit