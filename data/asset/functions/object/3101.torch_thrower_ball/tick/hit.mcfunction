#> asset:object/3101.torch_thrower_ball/tick/hit
#
#
#
# @within function asset:object/3101.torch_thrower_ball/tick/

#> private
# @private
    #declare score_holder $OwnerID

# 演出
    particle flame ~ ~ ~ 0 0 0 0.2 4
    particle lava ~ ~ ~ 0 0 0 1 3

# 松明を設置
    execute store result storage asset:temp Type int 1 run function asset:object/3101.torch_thrower_ball/tick/can_place_check
    execute unless data storage asset:temp {Type: 0} run function asset:object/3101.torch_thrower_ball/tick/place

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage float 1 run random value 20..40
    # 物理属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:damage/modifier
        execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=2.5,dy=2.5,dz=2.5] run function api:damage/
    # 炎上
        execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=2.5,dy=2.5,dz=2.5] run data modify entity @s Fire set value 200s
# リセット
    function api:damage/reset
    scoreboard players reset $OwnerID Temporary
    data remove storage asset:temp Type

kill @s
