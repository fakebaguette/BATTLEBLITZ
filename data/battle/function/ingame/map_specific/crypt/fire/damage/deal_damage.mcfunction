particle flame ~ ~ ~ 0.5 0.8 0.5 0.1 3
playsound item.firecharge.use master @s ~ ~ ~ 0.5 0.9

item replace entity @s armor.body with stone[equippable={slot:"body"},enchantments={"battle:self_ignite":1b}]
effect give @s slowness 2 0 true

schedule function battle:ingame/map_specific/crypt/fire/damage/remove_fire 1s