#> asset:effect/3104.steal_glow_jewel/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:3104} run function asset:effect/3104.steal_glow_jewel/tick/
