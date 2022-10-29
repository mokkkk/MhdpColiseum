#> mhdp_core:phase/0_village/player/armor/get
#
# プレイヤー装備中の防具データを取得

# リセット
    function mhdp_core:phase/0_village/player/armor/reset

# 頭
    function mhdp_core:phase/0_village/player/armor/get_head

# 胴
    function mhdp_core:phase/0_village/player/armor/get_chest

# 脚
    function mhdp_core:phase/0_village/player/armor/get_legs

# 靴
    function mhdp_core:phase/0_village/player/armor/get_feet

# スキル計算
    function mhdp_core:phase/0_village/player/armor/skill

# 終了
    scoreboard players reset #mhdp_temp_armor

say 防具データ更新 in mhdp_core:phase/0_village/player/armor/