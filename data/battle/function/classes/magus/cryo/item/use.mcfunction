scoreboard players reset @s use_magus_snowball

playsound entity.breeze.deflect master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 1.4

particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute at @s as @n[type=snowball,distance=..2] positioned ~ ~1 ~ run function battle:classes/magus/cryo/item/pos

#cd