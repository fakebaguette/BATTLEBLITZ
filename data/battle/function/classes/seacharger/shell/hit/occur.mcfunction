effect give @s slowness 1 0
particle bubble_column_up ~ ~1 ~ 0.5 0.8 0.5 0 30 normal
playsound entity.player.hurt_drown master @a ~ ~ ~ 1 1.6

execute as @s[type=player] at @s summon snowball run function battle:classes/seacharger/shell/hit/apply