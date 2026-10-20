effect give @s instant_health 1 0 true
effect give @s minecraft:regeneration 1 2 true

title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"5 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Lifesteal","bold":true,"color":"red"}]

particle minecraft:scrape ~ ~1 ~ .5 .5 .5 2 5

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.5
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.5
playsound minecraft:item.axe.scrape master @a ~ ~ ~ 0.5 1.2