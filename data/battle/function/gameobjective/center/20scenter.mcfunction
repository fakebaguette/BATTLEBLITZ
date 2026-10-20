execute if score round1: gameTimer matches 1 run scoreboard players set .time centerTimer 21
execute if score round2: gameTimer matches 1 run scoreboard players set .time centerTimer 21
execute if score round3: gameTimer matches 1 run scoreboard players set .time centerTimer 21
execute if score round4: gameTimer matches 1 run scoreboard players set .time centerTimer 21
execute if score round5: gameTimer matches 1 run scoreboard players set .time centerTimer 21
scoreboard players remove .time centerTimer 1

execute if score .time centerTimer matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Center unlocks in ","color":"white"},{"color":"gold","text":"20"},{"color":"gold","text":" Seconds 🔒"}]
execute if score .time centerTimer matches 15 run title @a[tag=Participant] actionbar ["",{"text":"Center unlocks in ","color":"white"},{"color":"gold","text":"15"},{"color":"gold","text":" Seconds 🔒"}]
execute if score .time centerTimer matches 10 run title @a[tag=Participant] actionbar ["",{"text":"Center unlocks in ","color":"white"},{"color":"gold","text":"10"},{"color":"gold","text":" Seconds 🔒"}]

execute if score .time centerTimer matches ..5 run title @a[tag=Participant] actionbar ["",{"text":"Center unlocks in ","color":"white"},{"color":"gold","score":{"objective":"centerTimer","name":".time"}},{"color":"gold","text":" Seconds 🔒"}]


execute if score .time centerTimer matches 0 as @a[tag=Participant] at @s run function battle:gameobjective/center/20sopen