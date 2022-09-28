#> mhdp_weapons:weapon/bow/2_hard_shot/start
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
    scoreboard players remove @s MhdpWeaponExt 60
    execute if entity @s[scores={MhdpWeaponExt=..-1}] run scoreboard players set @s MhdpWeaponExt 0

# 溜め段階に応じた矢を発射する
    function mhdp_weapons:weapon/bow/1_shot/attack

say 剛射