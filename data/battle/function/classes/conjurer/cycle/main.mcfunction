execute if entity @a[tag=conjurer_class] run schedule function battle:classes/conjurer/cycle/main 1t

execute as @a[tag=conjurer_class,advancements={battle:conjurer/swap=false}] at @s if predicate battle:shift run function battle:classes/conjurer/cycle/cycle
execute as @a[tag=conjurer_class,advancements={battle:conjurer/swap=false}] at @s if predicate battle:shift run advancement grant @s only battle:conjurer/swap

scoreboard objectives add conj_count dummy

execute as @a[tag=conjurer_class,scores={conj_count=3..}] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":"'s next item is ","color":"white"},{"text":"upgraded","color":"gold"},{"text":"!","color":"white"}]
execute as @a[tag=conjurer_class,scores={conj_count=3..}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 1.4
execute as @a[tag=conjurer_class,scores={conj_count=3..}] at @s run playsound block.note_block.chime master @a ~ ~ ~ 1 1.4
tag @a[tag=conjurer_class,scores={conj_count=3..}] add conj_up
scoreboard players reset @a[tag=conjurer_class,scores={conj_count=3..}] conj_count