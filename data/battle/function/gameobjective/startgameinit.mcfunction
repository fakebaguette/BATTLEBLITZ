function battle:gameobjective/gameobjectiveextra/update/updatescoreboards
function battle:gameobjective/gameobjectiveextra/update/stars/call_update_stars
effect give @a[tag=Participant] resistance 1 255 true
execute if score .toggle toggleDouble matches 1 as @a[tag=Participant] run attribute @s max_health base set 40 
execute if score .toggle toggleHalf matches 1 as @a[tag=Participant] run attribute @s max_health base set 10
execute if score .toggle toggleMap matches 3 run function battle:gameobjective/gameobjectiveextra/map/sandstorm
execute if score .toggle toggleMap matches 4 run function battle:gameobjective/gameobjectiveextra/map/reserve
execute if score .toggle toggleMap matches 5 run function battle:gameobjective/gameobjectiveextra/map/sanctuary
execute if score .toggle toggleMap matches 6 run function battle:gameobjective/gameobjectiveextra/map/outpost
execute if score .toggle toggleMap matches 7 run function battle:gameobjective/gameobjectiveextra/map/crypt
function battle:gameobjective/gameobjectiveextra/inittp
function battle:reset/entities
function battle:ingame/map_specific/sandstorm/storm/stopstorm
function battle:gameobjective/gameobjectiveextra/roundclear
function battle:gameobjective/gameobjectiveextra/closebox
execute if score .toggle togglePower matches 1 run function battle:powerups/activatespawn
execute if score .toggle toggleMap matches 3 run schedule function battle:ingame/map_specific/sandstorm/center/select 70t
schedule function battle:classes/venator/hunt/init 4s

function battle:gameobjective/gameobjectiveextra/update/rounds/call_update_rounds
function battle:ingame/detect

scoreboard objectives remove tpGameSettings 
scoreboard objectives remove tpClassInfo 
scoreboard objectives remove tpTutorial 
scoreboard objectives remove tpCosmetics 
scoreboard objectives remove tpCredits 
scoreboard objectives remove tpPVP 
scoreboard objectives remove tpArchery 
scoreboard objectives remove tpParkour

schedule function battle:ingame/restock/10s 10s replace
schedule function battle:ingame/restock/12s 12s replace
schedule function battle:ingame/restock/15s 15s replace
schedule function battle:ingame/restock/20s 20s replace
schedule function battle:ingame/restock/25s 25s replace