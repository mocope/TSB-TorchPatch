#> asset:effect/3104.steal_glow_jewel/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/3104.steal_glow_jewel/_/given

# VFX
    playsound block.beacon.activate player @a[distance=..16] ~ ~ ~ 1 1

# 補正を付与する
    function asset:effect/3104.steal_glow_jewel/modifier/add
