forceload add 0 157

#lobby
function battle:lobby/detect
function battle:lobby/extracheck
function battle:teamchoice/1-ready/main
function battle:lobby/spectate/main
function battle:ingame/drop/nodrop
function battle:other/hp_display/main

function battle:lobby/cosmetics/main

#In Game
function battle:ingame/detect
#function battle:ingame/ladder

#Other
function battle:other/visfix/init
function battle:other/2t
function battle:other/5t
function battle:other/15t
function battle:other/5s
function battle:other/20s
function battle:gameobjective/gameobjectiveextra/update/colchangescores
function battle:ingame/disablefunction/class/conj
function battle:ingame/disablefunction/class/light
function battle:ingame/disablefunction/class/legion
function battle:ingame/disablefunction/class/magus
function battle:ingame/disablefunction/class/mara
function battle:ingame/disablefunction/class/north
function battle:ingame/disablefunction/class/praet
function battle:ingame/disablefunction/class/reve
function battle:ingame/disablefunction/class/trap
function battle:ingame/disablefunction/class/vena
function battle:ingame/disablefunction/class/cava
function battle:ingame/disablefunction/class/seach
function battle:ingame/disablefunction/class/prosp

schedule clear battle:powerups/curse/main
#schedule clear battle:powerups/decay/decaypotion
schedule clear battle:powerups/enhanced/gapple
schedule clear battle:powerups/haste/hastepower
schedule clear battle:powerups/health/main
schedule clear battle:powerups/light/main
schedule clear battle:powerups/puffer/main
schedule clear battle:powerups/resist/resistancepower
schedule clear battle:powerups/shroom/main
schedule clear battle:powerups/tnt/main

function battle:lobby/disablefunction/archery
function battle:lobby/disablefunction/class
function battle:lobby/disablefunction/credits
function battle:lobby/disablefunction/lobby
function battle:lobby/disablefunction/pvp
function battle:lobby/disablefunction/settings

schedule clear battle:teamchoice/0-participate/main
schedule clear battle:teamchoice/2-randomorteam/main
schedule clear battle:teamchoice/3-teampick/main
schedule clear battle:teamchoice/4-color1/main
schedule clear battle:teamchoice/5-color2/main
schedule clear battle:teamchoice/7-class/main
schedule clear battle:gameobjective/startgame
schedule clear battle:gameobjective/startgame2
schedule clear battle:gameobjective/startgame3
schedule clear battle:gameobjective/round1/main
schedule clear battle:gameobjective/round2/main
schedule clear battle:gameobjective/round3/main
schedule clear battle:gameobjective/victory

schedule clear battle:gameobjective/gameobjectiveextra/update/updatescoreboards
schedule clear battle:ingame/pads/speed/check
schedule clear battle:ingame/pads/jump/check
schedule clear battle:ingame/pads/teleport/main
schedule clear battle:ingame/map_specific/slate/main
schedule clear battle:classes/venator/hunt/glow

function battle:reset/entities
function battle:reset/reset

function battle:ingame/forfeit/main
function battle:other/resetall/main