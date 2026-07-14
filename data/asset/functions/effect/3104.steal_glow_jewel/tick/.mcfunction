#> asset:effect/3104.steal_glow_jewel/tick/
#
# Effectのtick処理
#
# @within function asset:effect/3104.steal_glow_jewel/_/tick

# 明るければ解除
    # execute if predicate lib:light_level/15 run function asset:effect/3104.steal_glow_jewel/tick/force_remove

# 暗視バフがついていれば解除
    execute if predicate torch_patch:has_night_vision run function asset:effect/3104.steal_glow_jewel/tick/force_remove
