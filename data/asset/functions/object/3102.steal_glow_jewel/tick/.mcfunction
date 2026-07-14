#> asset:object/3102.steal_glow_jewel/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3102/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 処理
    function asset:object/3102.steal_glow_jewel/tick/circle/

# 消滅処理
    execute if score @s General.Object.Tick matches 40.. run function asset:object/3102.steal_glow_jewel/tick/remove/
