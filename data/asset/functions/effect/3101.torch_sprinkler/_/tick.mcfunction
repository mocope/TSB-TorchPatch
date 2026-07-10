#> asset:effect/3101.torch_sprinkler/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:3101} run function asset:effect/3101.torch_sprinkler/tick/
