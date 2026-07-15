#> asset:artifact/3104.auto_torch_ver3/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/3104.auto_torch_ver3/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 3104
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 松明を持っているかチェック
    execute store result score $Count Temporary run clear @s torch 0
    execute if score $Count Temporary matches ..0 run tag @s remove CanUsed
    scoreboard players reset $Count Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# サバイバルエリアか？
    # execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/3104.auto_torch_ver3/trigger/3.main
