#chat messages
execute as @a[tag=EQUIPtntKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPtntKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was blasted by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPtntKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was exploded by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPtntKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," ran a failed experiment on ",{"selector":"@a[tag=deadPlayer]"},"."]
execute as @a[tag=EQUIPtntKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," shot ",{"selector":"@a[tag=deadPlayer]"}," into the sky."]

execute as @a[tag=EQUIPspaceKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPspaceKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," got suffocated by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPspaceKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," sent ",{"selector":"@a[tag=deadPlayer]"}," into space."]
execute as @a[tag=EQUIPspaceKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was ejected by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPspaceKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," fired a rocket into ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPnoobKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPnoobKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was flushed down ",{"selector":"@s"},"s toilet."]
execute as @a[tag=EQUIPnoobKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," farded on ",{"selector":"@a[tag=deadPlayer]"},"."]
execute as @a[tag=EQUIPnoobKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," got noobed on by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPnoobKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," tried to eat ",{"selector":"@s"},"'s poisonous poop."]

execute as @a[tag=EQUIPlightKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPlightKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was lit up by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlightKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was struck with light by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlightKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was electrified by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlightKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," couldn't survive ",{"selector":"@s"},"'s lights."]

execute as @a[tag=EQUIPmaraKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPmaraKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was shattered by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPmaraKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was decimated by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPmaraKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," tried to escape ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPmaraKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," got roped back by ",{"selector":"@s"},"."]

execute as @a[tag=EQUIPlegionKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPlegionKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was vanquished by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlegionKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was banished by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlegionKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was combo'ed by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPlegionKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," was victorious over ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPvenaKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPvenaKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," found ",{"selector":"@a[tag=deadPlayer]"}," standing all alone."]
execute as @a[tag=EQUIPvenaKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was executed by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPvenaKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was tormented by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPvenaKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," didn't see ",{"selector":"@s"}," coming."]

execute as @a[tag=EQUIPconjKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPconjKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was vaporized by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPconjKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was cursed by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPconjKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," threw all their stuff on ",{"selector":"@a[tag=deadPlayer]"},"."]
execute as @a[tag=EQUIPconjKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was scattered by ",{"selector":"@s"},"s magic"]

execute as @a[tag=EQUIPreveKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPreveKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was packed up for ",{"selector":"@s"},"'s lunch."]
execute as @a[tag=EQUIPreveKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," took ",{"selector":"@a[tag=deadPlayer]"},"s soul."]
execute as @a[tag=EQUIPreveKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," devoured ",{"selector":"@a[tag=deadPlayer]"},"s soul."]
execute as @a[tag=EQUIPreveKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," was hungry for ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPmagusKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPmagusKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was frozen by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPmagusKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was suddenly found in ",{"selector":"@s"},"'s fridge."]
execute as @a[tag=EQUIPmagusKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," turned ",{"selector":"@a[tag=deadPlayer]"}," into an ice cube."]
execute as @a[tag=EQUIPmagusKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," couldn't eat ",{"selector":"@s"},"'s ice cubes."]

execute as @a[tag=EQUIPtrapKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPtrapKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was exposed by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPtrapKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," walked straight into ",{"selector":"@s"},"'s trap."]
execute as @a[tag=EQUIPtrapKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," couldn't handle all of ",{"selector":"@s"},"'s things."]
execute as @a[tag=EQUIPtrapKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was shot up by ",{"selector":"@s"},"."]

execute as @a[tag=EQUIPnorthKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPnorthKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was conquered by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPnorthKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," struck ",{"selector":"@a[tag=deadPlayer]"}," with lightning."]
execute as @a[tag=EQUIPnorthKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was electrocuted by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPnorthKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," couldn't escape from ",{"selector":"@s"},"."]

execute as @a[tag=EQUIPpraetKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPpraetKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was trampled by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPpraetKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," tried to pet ",{"selector":"@s"},"'s horse."]
execute as @a[tag=EQUIPpraetKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," didn't see ",{"selector":"@s"},"'s horse."]
execute as @a[tag=EQUIPpraetKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," jumped ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPprospKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPprospKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," thought ",{"selector":"@s"},"'s fireworks were friendly."]
execute as @a[tag=EQUIPprospKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," died to ",{"selector":"@s"},"'s cardboard box."]
execute as @a[tag=EQUIPprospKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@s"},"'s fireworks were too bright for ",{"selector":"@a[tag=deadPlayer]"},"."]
execute as @a[tag=EQUIPprospKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," mined out ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPcavaKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPcavaKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," thought ",{"selector":"@s"},"'s camel was friendly"]
execute as @a[tag=EQUIPcavaKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was pierced by",{"selector":"@s"},""]
execute as @a[tag=EQUIPcavaKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," didn't see ",{"selector":"@s"},"'s spear coming."]
execute as @a[tag=EQUIPcavaKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," drove straight into ",{"selector":"@a[tag=deadPlayer]"},"."]

execute as @a[tag=EQUIPseachKillMessage,scores={killer=1..}] store result score @s cosmeticKill run random value 1..4
execute as @a[tag=EQUIPseachKillMessage,scores={killer=1..,cosmeticKill=1}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was flung up by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPseachKillMessage,scores={killer=1..,cosmeticKill=2}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," tried to feed ",{"selector":"@s"},"'s little fish."]
execute as @a[tag=EQUIPseachKillMessage,scores={killer=1..,cosmeticKill=3}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was drowned by ",{"selector":"@s"},"."]
execute as @a[tag=EQUIPseachKillMessage,scores={killer=1..,cosmeticKill=4}] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer]"}," was plunged into the depths by ",{"selector":"@s"},"."]

scoreboard players reset @a cosmeticKill