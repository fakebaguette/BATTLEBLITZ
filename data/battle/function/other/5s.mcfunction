schedule function battle:other/5s 5s

scoreboard objectives add markCenter dummy

scoreboard players add .mark markCenter 1
execute if score .mark markCenter matches 1 as @e[tag=5x5center,type=interaction] at @s run setblock ~ ~-1 ~ end_gateway
execute if score .mark markCenter matches 2 as @e[tag=5x5center,type=interaction] at @s run setblock ~ ~-1 ~ bedrock

execute if score .mark markCenter matches 2 run scoreboard players reset .mark markCenter

effect give @a saturation 1 0 true
function battle:gameobjective/gameobjectiveextra/update/updatescoreboards

#slate
fill 1008 79 1994 1008 92 1994 ladder
fill 992 79 2006 992 92 2006 minecraft:ladder[facing=south]
#sandstorm
fill 822 16 1020 822 25 1020 ladder[facing=south]
fill 857 15 1039 857 24 1039 minecraft:ladder
fill 838 16 1002 838 25 1002 ladder
fill 803 15 983 803 24 983 ladder[facing=south]
#reserve
fill 2000 105 981 2000 125 981 ladder
#sanctuary
fill 2000 102 8 2000 108 8 ladder
fill 2000 102 -8 2000 108 -8 ladder[facing=south]
#crypt
fill 3000 107 7 3000 123 7 ladder[facing=south]
fill 3000 108 -7 3000 123 -7 ladder
fill 3021 110 -11 3021 118 -11 ladder[facing=south]
fill 2979 110 -11 2979 118 -11 ladder[facing=south]

effect give fakebaguette night_vision 16 0 true
effect give FriedFood night_vision 16 0 true