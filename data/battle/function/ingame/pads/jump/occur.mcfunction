execute unless block ~ ~-1 ~ polished_deepslate_stairs run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 1.1
execute unless block ~ ~-1 ~ polished_deepslate_stairs run playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0.6
execute unless block ~ ~-1 ~ polished_deepslate_stairs run playsound minecraft:entity.panda.step master @a ~ ~ ~ 1 0.6
execute unless block ~ ~-1 ~ polished_deepslate_stairs run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 2
execute unless block ~ ~-1 ~ polished_deepslate_stairs run particle minecraft:poof ~ ~0.5 ~ 0.5 0.8 0.5 0.1 50 normal
effect clear @s minecraft:jump_boost
scoreboard players reset @s jumpPadd