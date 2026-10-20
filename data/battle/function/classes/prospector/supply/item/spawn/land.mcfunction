playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 0.6
playsound entity.player.attack.knockback master @a ~ ~ ~ 1 0.6
playsound block.anvil.land master @a ~ ~ ~ 1 0.6
playsound block.tripwire.detach master @a ~ ~ ~ 1 0.6
playsound item.wolf_armor.damage master @a ~ ~ ~ 1 0.6
particle flash{color:-1} ~ ~ ~ 3 3 3 0 5 normal
particle crit ~ ~ ~ 3 3 3 0.6 50 normal
particle poof ~ ~ ~ 3 3 3 0.6 50 normal

execute if entity @s[tag=prosp_Team1] as @e[tag=!Team1,distance=..2.75] run function battle:classes/prospector/supply/dmg
execute if entity @s[tag=prosp_Team2] as @e[tag=!Team2,distance=..2.75] run function battle:classes/prospector/supply/dmg

execute if entity @s[tag=prosp_Team1] run tag @a[tag=!Team1] remove prosp_got_hit
execute if entity @s[tag=prosp_Team1] run tag @a[tag=!Team2] remove prosp_got_hit

function battle:classes/prospector/supply/item/spawn/spawn_tnt
function battle:classes/prospector/supply/tnt/rotate

execute if entity @s[tag=prosp_Team1] as @n[tag=prosp_Team1,tag=prosp_box_hitbox] run kill @s
execute if entity @s[tag=prosp_Team2] as @n[tag=prosp_Team2,tag=prosp_box_hitbox] run kill @s

execute if entity @s[tag=prosp_Team1] as @n[tag=prosp_Team1,tag=prosp_box_target] on passengers run kill @s
execute if entity @s[tag=prosp_Team1] as @n[tag=prosp_Team1,tag=prosp_box_target] run kill @s

execute if entity @s[tag=prosp_Team2] as @n[tag=prosp_Team2,tag=prosp_box_target] on passengers run kill @s
execute if entity @s[tag=prosp_Team2] as @n[tag=prosp_Team2,tag=prosp_box_target] run kill @s

execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s