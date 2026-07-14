#> asset:effect/3104.steal_glow_jewel/tick/force_remove
#
# 
#
# @within function asset:effect/3104.steal_glow_jewel/tick/

# 演出
    playsound block.glass.break player @a[distance=..16] ~ ~ ~ 1 1
    playsound block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1 1

# 解除
    data modify storage asset:context Duration set value -1
