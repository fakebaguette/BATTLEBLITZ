execute if entity @a[tag=trap_got_trapped] run schedule function battle:classes/trapshooter/trap/expose 1t

scoreboard objectives add trap_trap_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add trap_trap_time dummy

scoreboard players add @a[tag=trap_got_trapped] trap_trap_time 1
scoreboard players reset @a[tag=!trap_got_trapped] trap_trap_taken
effect give @a[scores={trap_trap_time=4..,trap_trap_taken=1..}] poison 2 1 false
effect give @a[scores={trap_trap_time=4..,trap_trap_taken=1..}] slowness 3 1 false
effect clear @a[scores={trap_trap_time=4..,trap_trap_taken=1..}] glowing

tag @a[scores={trap_trap_time=4..,trap_trap_taken=1..}] add trap_cosmetic_trap_kill
scoreboard players set @a[tag=trap_got_trapped,scores={trap_trap_time=4..,trap_trap_taken=1..}] trap_trap_time 200
scoreboard players reset @a[tag=trap_got_trapped,scores={trap_trap_taken=1..}] trap_trap_taken

scoreboard players reset @a[tag=!trap_got_trapped] trap_trap_time
tag @a[tag=trap_got_trapped,scores={trap_trap_time=200}] remove trap_cosmetic_trap_kill
tag @a[tag=trap_got_trapped,scores={trap_trap_time=200}] remove trap_got_trapped
scoreboard players reset @a[scores={trap_trap_time=200}] trap_trap_time 