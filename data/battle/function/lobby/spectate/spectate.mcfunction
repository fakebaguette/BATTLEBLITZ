tag @s add lobbySpectate
gamemode spectator @s
scoreboard objectives add triggerSpectate trigger
scoreboard players enable @s triggerSpectate
playsound block.note_block.pling master @s ~ ~ ~ 10 1.9
tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Done spectating?","click_event":{"action":"run_command",command:"/trigger triggerSpectate"},"color":"red"},{"text":" Click here to return.","click_event":{"action":"run_command","command":"/trigger triggerSpectate"}}]