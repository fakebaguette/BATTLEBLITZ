schedule function battle:other/2t 2t

scoreboard objectives add logInReset minecraft.custom:minecraft.leave_game
scoreboard players reset @a[gamemode=creative] logInReset
execute as @a[scores={logInReset=1..},gamemode=!creative] run function battle:reset/personalreset

particle minecraft:cherry_leaves 1980 125 -15 50 10 50 0 100 normal
particle tinted_leaves{color:[0.329,0.561,0.314,1.0]} 2000 100 1000 50 10 50 0 5 normal