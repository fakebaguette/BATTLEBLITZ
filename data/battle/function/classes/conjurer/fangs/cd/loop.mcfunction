scoreboard objectives add fangs_itemCD dummy
scoreboard players add @s fangs_itemCD 1
execute as @a[scores={fangs_itemCD=1..}] at @s run function battle:classes/conjurer/fangs/cd/cd