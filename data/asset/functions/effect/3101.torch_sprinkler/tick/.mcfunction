#> asset:effect/3101.torch_sprinkler/tick/
#
# Effectのtick処理
#
# @within function asset:effect/3101.torch_sprinkler/_/tick

# 松明を飛ばす
    scoreboard players add @s 3101.Count 1
    execute if score @s 3101.Count matches 0.. anchored eyes positioned ^ ^ ^ run function asset:effect/3101.torch_sprinkler/tick/summon_torch
