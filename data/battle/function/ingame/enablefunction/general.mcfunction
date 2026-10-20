function battle:ingame/healing/main
function battle:ingame/playerdeath/main
function battle:powerups/usedetect
function battle:ingame/placemine/miningpick
function battle:ingame/placemine/detectblock
function battle:ingame/placemine/detectmine

execute if entity @a[tag=inGame] if score .toggle toggleMap matches 1 run function battle:ingame/pads/speed/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 1 run function battle:ingame/pads/jump/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 1 run function battle:ingame/pads/teleport/main
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 1 run function battle:ingame/map_specific/slate/main

execute if entity @a[tag=inGame] if score .toggle toggleMap matches 3 run function battle:ingame/pads/speed/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 3 run function battle:ingame/pads/jump/check

execute if entity @a[tag=inGame] if score .toggle toggleMap matches 6 run function battle:ingame/pads/speed/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 6 run function battle:ingame/pads/jump/check

execute if entity @a[tag=inGame] if score .toggle toggleMap matches 7 run function battle:ingame/pads/speed/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 7 run function battle:ingame/pads/jump/check
execute if entity @a[tag=inGame] if score .toggle toggleMap matches 7 run function battle:ingame/pads/teleport/main

execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/speed/check
execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/jump/check
execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/teleport/main
execute unless entity @a[tag=inGame] run schedule clear battle:ingame/map_specific/slate/main

execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/speed/check
execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/jump/check

execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/speed/check
execute unless entity @a[tag=inGame] run schedule clear battle:ingame/pads/jump/check

execute unless entity @a[tag=inGame] run schedule clear battle:classes/venator/hunt/glow
