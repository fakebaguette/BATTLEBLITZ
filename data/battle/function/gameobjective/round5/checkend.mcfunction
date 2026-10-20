execute if score round5: gameTimer matches 20.. run schedule function battle:gameobjective/round5/checkend 5t

function battle:gameobjective/gameobjectiveextra/blockcheck

execute if score .count blockCountRed matches 9 run scoreboard players set TeamRed: round_5 1
execute if score .count blockCountMagenta matches 9 run scoreboard players set TeamMag: round_5 1
execute if score .count blockCountAqua matches 9 run scoreboard players set TeamAqu: round_5 1
execute if score .count blockCountLime matches 9 run scoreboard players set TeamLim: round_5 1
execute if score .count blockCountGold matches 9 run scoreboard players set TeamGol: round_5 1
execute if score .count blockCountYellow matches 9 run scoreboard players set TeamYel: round_5 1

execute if score TeamRed: round_5 matches 1 run tag @a[team=Red] add wonRound
execute if score TeamMag: round_5 matches 1 run tag @a[team=Magenta] add wonRound
execute if score TeamAqu: round_5 matches 1 run tag @a[team=Aqua] add wonRound
execute if score TeamLim: round_5 matches 1 run tag @a[team=Lime] add wonRound
execute if score TeamGol: round_5 matches 1 run tag @a[team=Gold] add wonRound
execute if score TeamYel: round_5 matches 1 run tag @a[team=Yellow] add wonRound

execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Red] run scoreboard players set Team1: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Magenta] run scoreboard players set Team1: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Aqua] run scoreboard players set Team1: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Lime] run scoreboard players set Team1: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Gold] run scoreboard players set Team1: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team1,team=Yellow] run scoreboard players set Team1: round_5 1

execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Red] run scoreboard players set Team2: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Magenta] run scoreboard players set Team2: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Aqua] run scoreboard players set Team2: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Lime] run scoreboard players set Team2: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Gold] run scoreboard players set Team2: round_5 1
execute as @a[tag=wonRound,tag=Participant,tag=Team2,team=Yellow] run scoreboard players set Team2: round_5 1

execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Red] run scoreboard players set Team1: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Magenta] run scoreboard players set Team1: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Aqua] run scoreboard players set Team1: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Lime] run scoreboard players set Team1: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Gold] run scoreboard players set Team1: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team1,team=Yellow] run scoreboard players set Team1: round_5 2

execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Red] run scoreboard players set Team2: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Magenta] run scoreboard players set Team2: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Aqua] run scoreboard players set Team2: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Lime] run scoreboard players set Team2: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Gold] run scoreboard players set Team2: round_5 2
execute as @a[tag=!wonRound,tag=Participant,tag=Team2,team=Yellow] run scoreboard players set Team2: round_5 2

execute as @a[tag=wonRound,tag=Participant] if score round5: gameTimer matches 1..120 run advancement grant @s[advancements={battle:cosmetics/extra/dominate=true}] only battle:cosmetics/extra/rush
execute as @a[tag=wonRound,tag=Participant] if score round5: gameTimer matches 1..240 run advancement grant @s[advancements={battle:cosmetics/extra/win=true}] only battle:cosmetics/extra/dominate

execute if score TeamRed: round_5 matches 1 run scoreboard players set round5: gameTimer -1
execute if score TeamMag: round_5 matches 1 run scoreboard players set round5: gameTimer -1
execute if score TeamAqu: round_5 matches 1 run scoreboard players set round5: gameTimer -1
execute if score TeamLim: round_5 matches 1 run scoreboard players set round5: gameTimer -1
execute if score TeamGol: round_5 matches 1 run scoreboard players set round5: gameTimer -1
execute if score TeamYel: round_5 matches 1 run scoreboard players set round5: gameTimer -1

execute if score round5: gameTimer matches 240.. if score .toggle toggleRound matches 1 run scoreboard players set round5: gameTimer -1
execute if score round5: gameTimer matches 480.. if score .toggle toggleRound matches 2 run scoreboard players set round5: gameTimer -1
execute if score round5: gameTimer matches 720.. if score .toggle toggleRound matches 3 run scoreboard players set round5: gameTimer -1

execute if score round5: gameTimer matches -1 run schedule clear battle:gameobjective/round5/checkend
execute if score round5: gameTimer matches -1 run function battle:gameobjective/round5/end