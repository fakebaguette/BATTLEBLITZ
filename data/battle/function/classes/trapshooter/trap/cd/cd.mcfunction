execute if entity @s[scores={trap_itemCD=1..}] run schedule function battle:classes/trapshooter/trap/cd/loop 1t

scoreboard players add @s trap_itemCD 1
advancement revoke @s[scores={trap_itemCD=9..}] only battle:trapshooter/exposure_trap
scoreboard players reset @s[scores={trap_itemCD=9..}] trap_itemCD