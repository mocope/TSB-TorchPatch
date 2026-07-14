#> asset:object/3102.steal_glow_jewel/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3102/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Silent:1b,Tags:["ObjectInit"]}
