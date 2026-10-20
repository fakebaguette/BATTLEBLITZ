schedule function battle:lobby/cosmetics/main 1t

execute as @a[scores={cosmetics_exit_dialog=1..}] run function battle:lobby/cosmetics/open_dialog/disable_obj
execute as @a[scores={cosmetics_open_crates=1..}] run function battle:lobby/cosmetics/crates/open
execute as @a[scores={cosmetics_open_effects=1..}] run function battle:lobby/cosmetics/kill_effects/open
execute as @a[scores={cosmetics_open_sounds=1..}] run function battle:lobby/cosmetics/kill_sounds/open
execute as @a[scores={cosmetics_open_messages=1..}] run function battle:lobby/cosmetics/kill_messages/open

function battle:lobby/cosmetics/reward
function battle:lobby/cosmetics/crates/main
function battle:lobby/cosmetics/kill_effects/main
function battle:lobby/cosmetics/kill_sounds/main
function battle:lobby/cosmetics/kill_messages/main