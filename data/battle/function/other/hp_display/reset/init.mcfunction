scoreboard objectives add hp_reset dummy

scoreboard players set .number hp_reset 100
scoreboard players operation .i hp_reset = .number hp_reset

#scoreboard players operation .i hp_reset = $total hp_PID
function battle:other/hp_display/reset/loop