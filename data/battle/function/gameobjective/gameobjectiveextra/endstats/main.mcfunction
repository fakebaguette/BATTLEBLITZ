execute if score victoryTimer: gameTimer matches 1..119 run schedule function battle:gameobjective/gameobjectiveextra/endstats/main 1t

execute unless entity @a[tag=Participant,tag=endKill] run tellraw @a[tag=Participant] ["",{"text":"-----------------------------------------------------","color":"white"},{"text":"\n\n"},{"text":"[","color":"white"},{"text":"BATTLE","color":"#ff6600","bold":true},{"text":"]","color":"white"},{"text":" -","color":"white"},{"text":" Game Summary","color":"#00B4FF"},{"text":"\n\n"},{"text":"KILLS","color":"dark_red","bold":true},{"text":":"}]
execute if entity @a[tag=Participant,tag=!endKill] run function battle:gameobjective/gameobjectiveextra/endstats/kills

execute unless entity @a[tag=Participant,tag=!endKill] unless entity @a[tag=Participant,tag=endDeath] run tellraw @a[tag=Participant] ["\n",{"text":"DEATHS","bold":true,"color":"red"},{"text":":"}]
execute unless entity @a[tag=Participant,tag=!endKill] if entity @a[tag=Participant,tag=!endDeath] run function battle:gameobjective/gameobjectiveextra/endstats/deaths
execute unless entity @a[tag=Participant,tag=!endDeath] unless entity @a[tag=Participant,tag=endDMG] run tellraw @a[tag=Participant] ["\n",{"text":"DAMAGE DEALT (Physical)","bold":true,"color":"#FF88B1"},{"text":":"}]
execute unless entity @a[tag=Participant,tag=!endDeath] if entity @a[tag=Participant,tag=!endDMG] run function battle:gameobjective/gameobjectiveextra/endstats/damage