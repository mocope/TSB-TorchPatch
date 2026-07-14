#> asset:artifact/3101.torch_thrower_ball/trigger/place
#
# 
#
# @within function asset:artifact/3101.torch_thrower_ball/trigger/3.main

# 25%の確率で松明を一つ消す
    execute if predicate lib:random_pass_per/30 run clear @s torch 1

# Y-
    execute if data storage asset:temp {Type: 1} run return run setblock ~ ~ ~ torch
# X+
    execute if data storage asset:temp {Type: 2} run return run setblock ~ ~ ~ wall_torch[facing=west]
# X-
    execute if data storage asset:temp {Type: 3} run return run setblock ~ ~ ~ wall_torch[facing=east]
# Z+
    execute if data storage asset:temp {Type: 4} run return run setblock ~ ~ ~ wall_torch[facing=north]
# Z-
    execute if data storage asset:temp {Type: 5} run return run setblock ~ ~ ~ wall_torch[facing=south]
