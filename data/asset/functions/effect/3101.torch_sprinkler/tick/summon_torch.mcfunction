#> asset:effect/3101.torch_sprinkler/tick/summon_torch
#
# 
#
# @within function asset:effect/3101.torch_sprinkler/tick/

# Countをset
    execute store result score @s 3101.Count run data get storage asset:context this.Tick -1

# 発動条件をチェック
    execute unless predicate api:area/is_breakable run return fail

# vfx
    particle lava ~ ~0.3 ~
    playsound entity.blaze.shoot player @a[distance=..16] ~ ~0.3 ~ 0.1 2

# loop
    execute store result score $Loop Temporary run data get storage asset:context this.Count 1
    function asset:effect/3101.torch_sprinkler/tick/summon_loop

# reset
    scoreboard players reset $Loop Temporary
