#> asset:object/3101.torch_thrower_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3101/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle flame ~ ~ ~ 0 0 0 0 0

# 雪玉がいない場合ヒット
    execute unless predicate lib:is_vehicle run function asset:object/3101.torch_thrower_ball/tick/hit

# 消滅処理
    execute if score @s General.Object.Tick matches 100.. run kill @e[type=snowball,tag=3101.Snowball,distance=..1,sort=nearest,limit=1]
    kill @s[scores={General.Object.Tick=100..}]
