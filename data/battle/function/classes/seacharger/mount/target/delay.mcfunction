execute as @e[tag=seachSteed,tag=seach_airborne_steed,tag=mob_Team1] as @a[tag=seach_mount_hit,tag=!Team1] at @s summon snowball run function battle:classes/seacharger/mount/target/knockback
execute as @e[tag=seachSteed,tag=seach_airborne_steed,tag=mob_Team2] as @a[tag=seach_mount_hit,tag=!Team2] at @s summon snowball run function battle:classes/seacharger/mount/target/knockback

scoreboard objectives add seach_players_knocked dummy
execute as @e[tag=seachSteed,tag=seach_airborne_steed,tag=mob_Team1] as @a[tag=seach_mount_hit,tag=!Team1] at @s store result score @a[tag=seach_has_airborne,tag=Team1] seach_players_knocked if entity @s

execute as @e[tag=seachSteed,tag=seach_airborne_steed,tag=mob_Team2] as @a[tag=seach_mount_hit,tag=!Team2] at @s store result score @a[tag=seach_has_airborne,tag=Team2] seach_players_knocked if entity @s

execute as @a[tag=seach_has_airborne] if score @s seach_players_knocked matches 2.. run tag @s add seach_cosmetic_knocked
function battle:ingame/playerdeath/cosmetics/award/check