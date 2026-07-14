#> asset:object/3101.torch_thrower_ball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3101/summon

# 元となるEntityを召喚する
    summon snowball ~ ~ ~ {Silent:1b,Tags:["3101.Snowball","3101.Init"],Passengers:[{id:"minecraft:marker",Tags:["ObjectInit"]}],Item:{id:"minecraft:torch",Count:1}}
