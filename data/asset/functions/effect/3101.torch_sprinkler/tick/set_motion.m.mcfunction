#> asset:effect/3101.torch_sprinkler/tick/set_motion.m
#
# 
# @input args
#   Power : double
# @output storage asset:effect Motion : double[@3]
# @within function asset:effect/3101.torch_sprinkler/tick/summon_torch

# Motionを生成
    $execute store result storage asset:effect Motion[0] double $(Power) run random value -70..70
    $execute store result storage asset:effect Motion[1] double $(Power) run random value 30..100
    $execute store result storage asset:effect Motion[2] double $(Power) run random value -70..70
