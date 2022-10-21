#> mhdp_core:init/monster
#
# モンスター肉質データ初期化
# 無，火，水，雷，氷，龍

# storage初期化
    data remove storage mh_dp:monster_data List
    data modify storage mh_dp:monster_data List set value []

# 火竜
    # Head, Body, Leg, Tail
    data modify storage mh_dp:monster_data List append value []
        data modify storage mh_dp:monster_data List[0] append value [80,5,5,40,15,50]
        data modify storage mh_dp:monster_data List[0] append value [50,5,5,25,15,30]
        data modify storage mh_dp:monster_data List[0] append value [65,5,5,30,15,50]
        data modify storage mh_dp:monster_data List[0] append value [65,5,5,20,15,20]
