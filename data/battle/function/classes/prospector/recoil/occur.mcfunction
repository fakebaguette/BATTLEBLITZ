execute at @s summon snowball run function battle:classes/prospector/recoil/init

execute as @n[type=firework_rocket] at @s run data merge entity @s {}
execute as @n[type=firework_rocket] at @s run particle flash{color:-1} ~ ~ ~ 0 0 0 0 1