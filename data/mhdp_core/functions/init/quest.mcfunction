#> mhdp_core:init/quest
#
# クエスト保存用データ初期化

# storage初期化
    data remove storage mh_dp:quests List
    data modify storage mh_dp:quests List set value []

# 0：テスト用 火竜
    data modify storage mh_dp:quests List append value {Index:0,Started:0b,Cleared:0b}
# 1：テスト用 火竜
    data modify storage mh_dp:quests List append value {Index:1,Started:0b,Cleared:0b}
# 2：テスト用 火竜
    data modify storage mh_dp:quests List append value {Index:2,Started:0b,Cleared:0b}

say クエストデータ保持storageを初期化しました