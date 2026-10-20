particle sweep_attack ~ ~ ~ 0 0 0 0 1
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.4

tag @s add trapshooter_hitbox_hit

execute on vehicle run data merge entity @s {Motion:[0,0.2,0],Glowing:1b,Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:12840860}}}}