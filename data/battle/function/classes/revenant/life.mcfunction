schedule function battle:classes/revenant/life 2t

scoreboard objectives add reve_hit minecraft.custom:damage_dealt


execute as @a[tag=revenant_class,scores={reve_hit=20..30}] at @s run function battle:classes/revenant/lifesteal/2
execute as @a[tag=revenant_class,scores={reve_hit=31..40}] at @s run function battle:classes/revenant/lifesteal/3
execute as @a[tag=revenant_class,scores={reve_hit=41..50}] at @s run function battle:classes/revenant/lifesteal/4
execute as @a[tag=revenant_class,scores={reve_hit=51..60}] at @s run function battle:classes/revenant/lifesteal/5
execute as @a[tag=revenant_class,scores={reve_hit=61..}] at @s run function battle:classes/revenant/lifesteal/6
scoreboard players reset @a reve_hit