effect give @s slowness 1 0
particle minecraft:snowflake ~ ~1 ~ 0.5 0.8 0.5 0 10 normal
execute if entity @s[scores={north_axe_taken=55..}] at @s run effect give @s slowness 2 0