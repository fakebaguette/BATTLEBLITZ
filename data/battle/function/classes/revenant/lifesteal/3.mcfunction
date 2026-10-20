effect give @s minecraft:regeneration 1 3 true

title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"3 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Lifesteal","bold":true,"color":"red"}]

particle minecraft:scrape ~ ~1 ~ .5 .5 .5 2 5

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.8
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.8
playsound minecraft:item.axe.scrape master @a ~ ~ ~ 0.5 1.2