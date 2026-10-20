execute if score storm: special_events matches 1..40 run schedule function battle:ingame/map_specific/sandstorm/storm/alarm 5t
execute if score storm: special_events matches 1..39 run scoreboard players add storm: special_events 1

execute if score storm: special_events matches 1 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 0.7
execute if score storm: special_events matches 1 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 1.3
execute if score storm: special_events matches 1 at @a[tag=Participant] run playsound minecraft:block.anvil.place block @a[distance=..50] ~ ~ ~ 0.1 0.5

execute if score storm: special_events matches 4 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 0.7
execute if score storm: special_events matches 4 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 1.3
execute if score storm: special_events matches 4 at @a[tag=Participant] run playsound minecraft:block.anvil.place block @a[distance=..50] ~ ~ ~ 0.1 0.5

execute if score storm: special_events matches 7 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 0.7
execute if score storm: special_events matches 7 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 1.3
execute if score storm: special_events matches 7 at @a[tag=Participant] run playsound minecraft:block.anvil.place block @a[distance=..50] ~ ~ ~ 0.1 0.5

execute if score storm: special_events matches 10 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 0.7
execute if score storm: special_events matches 10 at @a[tag=Participant] run playsound minecraft:block.bell.use block @a[distance=..50] ~ ~ ~ 1 1.3
execute if score storm: special_events matches 10 at @a[tag=Participant] run playsound minecraft:block.anvil.place block @a[distance=..50] ~ ~ ~ 0.1 0.5

execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:entity.lightning_bolt.thunder block @a[distance=..50] ~ ~ ~ 1 0.5

execute if score storm: special_events matches 1 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"10 Seconds","color":"yellow"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 4 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"9 Seconds","color":"yellow"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 8 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"8 Seconds","color":"yellow"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 12 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"7 Seconds","color":"gold"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 16 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"6 Seconds","color":"gold"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"5 Seconds","color":"gold"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 24 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"4 Seconds","color":"red"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 28 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"3 Seconds","color":"red"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 32 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"2 Seconds","color":"red"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 36 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"1 Seconds","color":"red"},{"text":" \u2620","color":"dark_red"}]
execute if score storm: special_events matches 40 run title @a[tag=Participant] actionbar ["",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" approaching in "},{"text":"NOW! \u2620","color":"dark_red"}]

execute if score storm: special_events matches 32 at @a[tag=Participant] run playsound minecraft:block.note_block.hat master @a[distance=..50] ~ ~ ~ 1 0.5
execute if score storm: special_events matches 36 at @a[tag=Participant] run playsound minecraft:block.note_block.hat master @a[distance=..50] ~ ~ ~ 1 0.5
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:block.note_block.hat master @a[distance=..50] ~ ~ ~ 1 0.5

execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.basalt_deltas.additions master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.basalt_deltas.additions master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.basalt_deltas.additions master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.basalt_deltas.additions master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.nether_wastes.mood master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 at @a[tag=Participant] run playsound minecraft:ambient.crimson_forest.mood master @a[distance=..50] ~ ~ ~ 1 1
execute if score storm: special_events matches 40 run function battle:ingame/map_specific/sandstorm/storm/start
execute if score storm: special_events matches 40 run function battle:ingame/map_specific/sandstorm/storm/slow_loop
execute if score storm: special_events matches 40 run scoreboard players reset storm: special_events