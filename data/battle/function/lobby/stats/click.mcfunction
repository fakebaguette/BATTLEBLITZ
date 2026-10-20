schedule function battle:lobby/stats/click 1t

scoreboard objectives add statKill dummy
scoreboard objectives add statDeath dummy
scoreboard objectives add statWin dummy
scoreboard objectives add statLoss dummy
scoreboard objectives add statPlace dummy
scoreboard objectives add statBreak dummy

scoreboard objectives add chickenCount dummy
scoreboard objectives add parkourCount dummy
scoreboard objectives add pvpKills dummy

scoreboard players add @a statKill 0
scoreboard players add @a statDeath 0
scoreboard players add @a statWin 0
scoreboard players add @a statLoss 0
scoreboard players add @a statPlace 0
scoreboard players add @a statBreak 0

scoreboard players add @a parkourCount 0
scoreboard players add @a chickenCount 0
scoreboard players add @a pvpKills 0

execute as @e[type=interaction,tag=statsClick] at @s if data entity @s attack run particle enchanted_hit ~ ~.5 ~ 0.5 0.8 0.5 0 10 normal
execute as @e[type=interaction,tag=statsClick] at @s if data entity @s interaction run particle enchanted_hit ~ ~.5 ~ 0.5 0.8 0.5 0 10 normal

execute as @e[type=interaction,tag=statsClick] at @s on attacker as @s at @s run tellraw @s ["\n",{"text":"-----------------------------------------------","color":"white"},"\n",{"text":"BATTLE BLITZ","bold":true,"color":"#ff6633"},{"text":" PERSONAL STATS\n\n","bold":true},{"text":"GAME STATS","bold":true,"color":"gold"},"\n",{"text":"Wins: ","color":"green"},{"color":"white","score":{"objective":"statWin","name":"@s"}},"\n",{"text":"Losses: ","color":"red"},{"color":"white","score":{"objective":"statLoss","name":"@s"}},"\n\n",{"text":"Kills: ","color":"#ff3300"},{"color":"white","score":{"objective":"statKill","name":"@s"}},"\n",{"text":"Deaths: ","color":"#cc0000"},{"color":"white","score":{"objective":"statDeath","name":"@s"}},"\n\n",{"text":"Blocks broken:","color":"#ff9966"},{"text":" ","color":"yellow"},{"color":"white","score":{"objective":"statBreak","name":"@s"}},"\n",{"text":"Blocks placed:","color":"#ffcc33"},{"text":" ","color":"gold"},{"color":"white","score":{"objective":"statPlace","name":"@s"}},"\n\n",{"text":"-----------------------------------------------","color":"gray"},"\n\n",{"text":"MINIGAME STATS","bold":true,"color":"aqua"},"\n",{"text":"Archery Points: ","color":"#66ccff"},{"color":"white","score":{"objective":"chickenCount","name":"@s"}},"\n",{"text":"Parkour Points: ","color":"#ff99ff"},{"color":"white","score":{"objective":"parkourCount","name":"@s"}},"\n",{"text":"Practice Kills: ","color":"#ff6699"},{"color":"white","score":{"objective":"pvpKills","name":"@s"}},"\n",{"text":"-----------------------------------------------","color":"white"}]
execute as @e[type=interaction,tag=statsClick] at @s on target as @s at @s run tellraw @s ["\n",{"text":"-----------------------------------------------","color":"white"},"\n",{"text":"BATTLE BLITZ","bold":true,"color":"#ff6633"},{"text":" PERSONAL STATS\n\n","bold":true},{"text":"GAME STATS","bold":true,"color":"gold"},"\n",{"text":"Wins: ","color":"green"},{"color":"white","score":{"objective":"statWin","name":"@s"}},"\n",{"text":"Losses: ","color":"red"},{"color":"white","score":{"objective":"statLoss","name":"@s"}},"\n\n",{"text":"Kills: ","color":"#ff3300"},{"color":"white","score":{"objective":"statKill","name":"@s"}},"\n",{"text":"Deaths: ","color":"#cc0000"},{"color":"white","score":{"objective":"statDeath","name":"@s"}},"\n\n",{"text":"Blocks broken:","color":"#ff9966"},{"text":" ","color":"yellow"},{"color":"white","score":{"objective":"statBreak","name":"@s"}},"\n",{"text":"Blocks placed:","color":"#ffcc33"},{"text":" ","color":"gold"},{"color":"white","score":{"objective":"statPlace","name":"@s"}},"\n\n",{"text":"-----------------------------------------------","color":"gray"},"\n\n",{"text":"MINIGAME STATS","bold":true,"color":"aqua"},"\n",{"text":"Archery Points: ","color":"#66ccff"},{"color":"white","score":{"objective":"chickenCount","name":"@s"}},"\n",{"text":"Parkour Points: ","color":"#ff99ff"},{"color":"white","score":{"objective":"parkourCount","name":"@s"}},"\n",{"text":"Practice Kills: ","color":"#ff6699"},{"color":"white","score":{"objective":"pvpKills","name":"@s"}},"\n",{"text":"-----------------------------------------------","color":"white"}]
execute as @e[type=interaction,tag=statsClick] at @s on attacker as @s at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.9
execute as @e[type=interaction,tag=statsClick] at @s on target as @s at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.9

execute as @e[type=interaction,tag=statsClick] run data remove entity @s attack
execute as @e[type=interaction,tag=statsClick] run data remove entity @s interaction

