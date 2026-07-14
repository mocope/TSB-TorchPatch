#> asset:effect/3104.steal_glow_jewel/clear/
#
# 
#
# @within function
#   asset:effect/3104.steal_glow_jewel/end/
#   asset:effect/3104.steal_glow_jewel/remove/

# VFX
    playsound block.beacon.deactivate player @a[distance=..32] ~ ~ ~ 1 1

# 補正を削除する
    function asset:effect/3104.steal_glow_jewel/modifier/remove
