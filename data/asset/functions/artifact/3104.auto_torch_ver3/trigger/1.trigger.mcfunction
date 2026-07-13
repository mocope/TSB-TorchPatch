#> asset:artifact/3104.auto_torch_ver3/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[3104]} run function asset:artifact/3104.auto_torch_ver3/trigger/2.check_condition
