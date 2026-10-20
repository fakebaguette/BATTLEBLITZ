effect give @s instant_health 1 0 true

title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Lifesteal","bold":true,"color":"red"}]

particle minecraft:scrape ~ ~1 ~ .5 .5 .5 2 5

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.6
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.6
playsound minecraft:item.axe.scrape master @a ~ ~ ~ 0.5 1.2