
# storage初期化
    data remove storage mh_dp:quests Data
    data modify storage mh_dp:quests Data set value []
    data modify storage mh_dp:quests Data append value {Test1:1b, Test2:"array0"}
    data modify storage mh_dp:quests Data append value {Test1:1b, Test2:"array1"}
    data modify storage mh_dp:quests Data append value {Test1:1b, Test2:"array2"}
    data modify storage mh_dp:quests Data append value {Test1:1b, Test2:"array3"}




# 出力: 0,1,2,3,4,15,6,7,8,9
    # tellraw @a {"storage":"array_util:","nbt":"Array[]"}