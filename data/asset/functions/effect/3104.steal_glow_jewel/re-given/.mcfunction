#> asset:effect/3104.steal_glow_jewel/re-given/
#
# Effectが再付与された時の処理
#
# @within function asset:effect/3104.steal_glow_jewel/_/re-given

# VFX
    playsound block.beacon.activate player @a[distance=..16] ~ ~ ~ 1 1

# 補正を解除して付与する
    function asset:effect/3104.steal_glow_jewel/modifier/remove
    function asset:effect/3104.steal_glow_jewel/modifier/add
