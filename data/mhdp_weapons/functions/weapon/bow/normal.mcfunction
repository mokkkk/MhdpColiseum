#> mhdp_weapons:weapon/bow/normal
#
# 弓のメイン処理・通常
#

#declare tag WpnBowCharge 弓溜め中
#declare tag WpnBowShot 弓射撃中
#declare tag WpnBowHShot 弓剛射中
#declare tag WpnBowCStep 弓チャージステップ中
#declare tag WpnBowCharge1 弓溜め段階管理用
#declare tag WpnBowCharge2 弓溜め段階管理用
#declare tag WpnBowCharge3 弓溜め段階管理用
#declare tag WpnBowCharge4 弓溜め段階管理用
#declare tag WpnBow6Jump 弓飛翔にらみ撃ち

## 0_常時実行：
    function mhdp_weapons:weapon/bow/0_tick/

## 1_抜刀攻撃（溜め）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/bow/1_draw_act/start

## 2_溜め：
# 立ち → 右クリック長押し
# 射撃 → 右クリック長押し
# チャージステップ → 右クリック長押し
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnBowShot,tag=!WpnBowHShot,tag=!WpnBowCharge,tag=!WpnBowCStep,tag=!WpnBow6Jump,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeCurrent] run function mhdp_weapons:weapon/bow/2_charge/start
    execute if entity @s[tag=IsDrawing,tag=WpnBowCharge] run function mhdp_weapons:weapon/bow/2_charge/main

## 3_射撃：
# 溜め → 右クリック離す
    execute if entity @s[tag=IsDrawing,tag=WpnBowShot] run function mhdp_weapons:weapon/bow/3_shot/main

## 4_剛射：
# 射撃 → スニーク+右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnBowHShot] run function mhdp_weapons:weapon/bow/4_hard_shot/main

## 5_チャージステップ：
# 溜め → ジャンプ
# 射撃 → ジャンプ
    execute if entity @s[tag=IsDrawing,tag=WpnBowCStep] run function mhdp_weapons:weapon/bow/5_charge_step/main

## 6_飛翔にらみ撃ち
    execute if entity @s[tag=IsDrawing,tag=WpnBow6Jump] run function mhdp_weapons:weapon/bow/6_jump/main

# 終了
    tag @s remove IsDrawing
