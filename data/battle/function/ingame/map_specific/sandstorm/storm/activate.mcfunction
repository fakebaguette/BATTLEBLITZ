scoreboard objectives add special_events dummy
scoreboard players set storm: special_events 1
tellraw @a[tag=Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Sandstorm","bold":true,"color":"yellow"},{"text":" ","bold":true},{"text":"approaching!","color":"yellow"}," ",{"text":"Find shelter soon! (stand under a block)","color":"white"}]
function battle:ingame/map_specific/sandstorm/storm/alarm