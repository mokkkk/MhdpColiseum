#> mhdp_weapons:weapon/bow/4_hard_shot/start
#
# 弓：射撃開始
#

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnBowHShot

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# 移動速度低下
    effect clear @s speed
    effect give @s slowness 2 3 true

# 集中力消費
    scoreboard players remove @s MhdpStamina 100

# 溜め段階に応じた矢を発射する
    function mhdp_weapons:weapon/bow/3_shot/attack

say 剛射