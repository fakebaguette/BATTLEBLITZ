scoreboard objectives add blockCountRed dummy
scoreboard objectives add blockCountMagenta dummy
scoreboard objectives add blockCountAqua dummy
scoreboard objectives add blockCountLime dummy
scoreboard objectives add blockCountGold dummy
scoreboard objectives add blockCountYellow dummy

scoreboard objectives add mineBlockCheckRed minecraft.mined:red_concrete
scoreboard objectives add mineBlockCheckMagenta minecraft.mined:magenta_concrete
scoreboard objectives add mineBlockCheckAqua minecraft.mined:light_blue_concrete
scoreboard objectives add mineBlockCheckLime minecraft.mined:lime_concrete
scoreboard objectives add mineBlockCheckGold minecraft.mined:orange_concrete
scoreboard objectives add mineBlockCheckYellow minecraft.mined:yellow_concrete


#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 red_concrete unless score .check1 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 red_concrete run scoreboard players set .check1 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 red_concrete unless score .check2 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 red_concrete run scoreboard players set .check2 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 red_concrete unless score .check3 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 red_concrete run scoreboard players set .check3 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 red_concrete unless score .check4 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 red_concrete run scoreboard players set .check4 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 red_concrete unless score .check5 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 red_concrete run scoreboard players set .check5 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 red_concrete unless score .check6 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 red_concrete run scoreboard players set .check6 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 red_concrete unless score .check7 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 red_concrete run scoreboard players set .check7 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 red_concrete unless score .check8 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 red_concrete run scoreboard players set .check8 blockCountRed 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 red_concrete unless score .check9 blockCountRed matches 1 run scoreboard players add .count blockCountRed 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 red_concrete run scoreboard players set .check9 blockCountRed 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players set .count blockCountRed 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check1 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check2 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check3 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check4 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check5 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check6 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check7 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check8 blockCountRed
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckRed=1..}] run scoreboard players reset .check9 blockCountRed

#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 magenta_concrete unless score .check1 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 magenta_concrete run scoreboard players set .check1 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 magenta_concrete unless score .check2 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 magenta_concrete run scoreboard players set .check2 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 magenta_concrete unless score .check3 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 magenta_concrete run scoreboard players set .check3 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 magenta_concrete unless score .check4 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 magenta_concrete run scoreboard players set .check4 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 magenta_concrete unless score .check5 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 magenta_concrete run scoreboard players set .check5 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 magenta_concrete unless score .check6 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 magenta_concrete run scoreboard players set .check6 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 magenta_concrete unless score .check7 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 magenta_concrete run scoreboard players set .check7 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 magenta_concrete unless score .check8 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 magenta_concrete run scoreboard players set .check8 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 magenta_concrete unless score .check9 blockCountMagenta matches 1 run scoreboard players add .count blockCountMagenta 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 magenta_concrete run scoreboard players set .check9 blockCountMagenta 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players set .count blockCountMagenta 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check1 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check2 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check3 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check4 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check5 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check6 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check7 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check8 blockCountMagenta
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckMagenta=1..}] run scoreboard players reset .check9 blockCountMagenta

#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 light_blue_concrete unless score .check1 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 light_blue_concrete run scoreboard players set .check1 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 light_blue_concrete unless score .check2 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 light_blue_concrete run scoreboard players set .check2 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 light_blue_concrete unless score .check3 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 light_blue_concrete run scoreboard players set .check3 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 light_blue_concrete unless score .check4 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 light_blue_concrete run scoreboard players set .check4 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 light_blue_concrete unless score .check5 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 light_blue_concrete run scoreboard players set .check5 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 light_blue_concrete unless score .check6 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 light_blue_concrete run scoreboard players set .check6 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 light_blue_concrete unless score .check7 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 light_blue_concrete run scoreboard players set .check7 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 light_blue_concrete unless score .check8 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 light_blue_concrete run scoreboard players set .check8 blockCountAqua 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 light_blue_concrete unless score .check9 blockCountAqua matches 1 run scoreboard players add .count blockCountAqua 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 light_blue_concrete run scoreboard players set .check9 blockCountAqua 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players set .count blockCountAqua 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check1 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check2 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check3 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check4 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check5 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check6 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check7 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check8 blockCountAqua
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckAqua=1..}] run scoreboard players reset .check9 blockCountAqua

#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 lime_concrete unless score .check1 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 lime_concrete run scoreboard players set .check1 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 lime_concrete unless score .check2 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 lime_concrete run scoreboard players set .check2 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 lime_concrete unless score .check3 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 lime_concrete run scoreboard players set .check3 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 lime_concrete unless score .check4 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 lime_concrete run scoreboard players set .check4 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 lime_concrete unless score .check5 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 lime_concrete run scoreboard players set .check5 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 lime_concrete unless score .check6 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 lime_concrete run scoreboard players set .check6 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 lime_concrete unless score .check7 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 lime_concrete run scoreboard players set .check7 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 lime_concrete unless score .check8 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 lime_concrete run scoreboard players set .check8 blockCountLime 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 lime_concrete unless score .check9 blockCountLime matches 1 run scoreboard players add .count blockCountLime 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 lime_concrete run scoreboard players set .check9 blockCountLime 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players set .count blockCountLime 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check1 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check2 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check3 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check4 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check5 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check6 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check7 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check8 blockCountLime
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckLime=1..}] run scoreboard players reset .check9 blockCountLime

#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 orange_concrete unless score .check1 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 orange_concrete run scoreboard players set .check1 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 orange_concrete unless score .check2 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 orange_concrete run scoreboard players set .check2 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 orange_concrete unless score .check3 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 orange_concrete run scoreboard players set .check3 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 orange_concrete unless score .check4 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 orange_concrete run scoreboard players set .check4 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 orange_concrete unless score .check5 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 orange_concrete run scoreboard players set .check5 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 orange_concrete unless score .check6 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 orange_concrete run scoreboard players set .check6 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 orange_concrete unless score .check7 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 orange_concrete run scoreboard players set .check7 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 orange_concrete unless score .check8 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 orange_concrete run scoreboard players set .check8 blockCountGold 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 orange_concrete unless score .check9 blockCountGold matches 1 run scoreboard players add .count blockCountGold 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 orange_concrete run scoreboard players set .check9 blockCountGold 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players set .count blockCountGold 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check1 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check2 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check3 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check4 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check5 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check6 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check7 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check8 blockCountGold
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckGold=1..}] run scoreboard players reset .check9 blockCountGold

#
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 yellow_concrete unless score .check1 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~-1 yellow_concrete run scoreboard players set .check1 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 yellow_concrete unless score .check2 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~0 yellow_concrete run scoreboard players set .check2 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 yellow_concrete unless score .check3 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~-1 ~1 ~1 yellow_concrete run scoreboard players set .check3 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 yellow_concrete unless score .check4 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~-1 yellow_concrete run scoreboard players set .check4 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 yellow_concrete unless score .check5 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~0 yellow_concrete run scoreboard players set .check5 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 yellow_concrete unless score .check6 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~0 ~1 ~1 yellow_concrete run scoreboard players set .check6 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 yellow_concrete unless score .check7 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~-1 yellow_concrete run scoreboard players set .check7 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 yellow_concrete unless score .check8 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~0 yellow_concrete run scoreboard players set .check8 blockCountYellow 1

execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 yellow_concrete unless score .check9 blockCountYellow matches 1 run scoreboard players add .count blockCountYellow 1
execute as @e[tag=5x5center] at @s if block ~1 ~1 ~1 yellow_concrete run scoreboard players set .check9 blockCountYellow 1

execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players set .count blockCountYellow 0
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check1 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check2 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check3 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check4 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check5 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check6 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check7 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check8 blockCountYellow
execute as @e[tag=5x5center] at @s if entity @a[scores={mineBlockCheckYellow=1..}] run scoreboard players reset .check9 blockCountYellow

scoreboard players reset * mineBlockCheckRed
scoreboard players reset * mineBlockCheckMagenta
scoreboard players reset * mineBlockCheckAqua
scoreboard players reset * mineBlockCheckLime
scoreboard players reset * mineBlockCheckGold
scoreboard players reset * mineBlockCheckYellow