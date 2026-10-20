clear @s shield[custom_data={practiceShield:1b,lobby:1b,NoDrop:1b}]
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1
scoreboard players set @s practiceShieldDura 0
scoreboard players add @s practiceShieldCD 1