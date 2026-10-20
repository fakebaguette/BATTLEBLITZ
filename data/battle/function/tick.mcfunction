#arrow
tag @e[type=spectral_arrow,tag=!processedArrow,limit=1] add processSpec
data merge entity @e[type=spectral_arrow,tag=processSpec,limit=1] {pickup:0b,life:1160,damage:0.75d}
tag @e[type=spectral_arrow,tag=processSpec,limit=1] add processedArrow
tag @e[type=spectral_arrow,tag=processSpec,limit=1] remove processSpec

tag @e[type=arrow,tag=!processedArrow,limit=1] add processArrow
data merge entity @e[type=arrow,tag=!trapArrow,limit=1,tag=processArrow] {pickup:0b,life:1160,damage:1.25d}
data merge entity @e[type=arrow,tag=trapArrow,limit=1,tag=processArrow] {pickup:0b,life:1160,damage:2d}
tag @e[type=arrow,tag=processArrow,limit=1] add processedArrow
tag @e[type=arrow,tag=processArrow,limit=1] remove processArrow

execute as @e[type=villager,tag=statsGuy] at @s run tp @s ~ ~ ~ facing entity @p[distance=..5]