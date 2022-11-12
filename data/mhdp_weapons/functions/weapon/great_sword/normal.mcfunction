#> mhdp_weapons:weapon/great_sword/normal
#
# 大剣のメイン処理・通常
#

#declare tag WpnGswordCharge 大剣溜め中
#declare tag WpnGswordChargeAttack 大剣溜め斬り中
#declare tag WpnGswordTackle 大剣タックル中
#declare tag WpnGswordUpper 大剣斬り上げ中
#declare tag WpnGswordSweep 大剣薙ぎ払い中
#declare tag WpnGswordGuard 大剣ガード中
#declare tag WpnGswordCharge1 大剣溜め段階管理用
#declare tag WpnGswordCharge2 大剣溜め段階管理用
#declare tag WpnGswordCharge3 大剣溜め段階管理用
#declare tag RClicked 右クリック入力保存

# 0_常時実行：
    function mhdp_weapons:weapon/great_sword/0_tick/

## 1_抜刀攻撃（溜め）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/great_sword/1_draw_act/start

## 2_溜め：
# 立ち → 右クリック長押し
# 切り上げ → 右クリック長押し
# 薙ぎ払い → 右クリック長押し
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnGswordCharge,tag=!WpnGswordChargeAttack,tag=!WpnGswordTackle,tag=!WpnGswordUpper,tag=!WpnGswordSweep,tag=!WpnGswordGuard,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeCurrent,tag=!PlySneakCurrent] run function mhdp_weapons:weapon/great_sword/2_charge/start
    execute if entity @s[tag=IsDrawing,tag=WpnGswordCharge] run function mhdp_weapons:weapon/great_sword/2_charge/main

## 3_溜め斬り：
# 溜め → 右クリック離す
    execute if entity @s[tag=IsDrawing,tag=WpnGswordChargeAttack] run function mhdp_weapons:weapon/great_sword/3_charge_attack/main

## 4_タックル：
# 溜め → ジャンプ
    execute if entity @s[tag=IsDrawing,tag=WpnGswordTackle] run function mhdp_weapons:weapon/great_sword/4_tackle/main

## 5_斬り上げ：
# ガード → スニーク+右クリック
# 薙ぎ払い → スニーク+右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnGswordUpper] run function mhdp_weapons:weapon/great_sword/5_upper/main

## 6_薙ぎ払い：
# 斬り上げ → スニーク+右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnGswordSweep] run function mhdp_weapons:weapon/great_sword/6_sweep/main

## 7_ガード：
# スニーク
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnGswordCharge,tag=!WpnGswordChargeAttack,tag=!WpnGswordTackle,tag=!WpnGswordUpper,tag=!WpnGswordSweep,tag=!WpnGswordGuard,tag=!PlySneakAvoidFunc,tag=!PlyUsingEyeCurrent,tag=PlySneakCurrent] run function mhdp_weapons:weapon/great_sword/7_guard/start
    execute if entity @s[tag=IsDrawing,tag=WpnGswordGuard] run function mhdp_weapons:weapon/great_sword/7_guard/main
    execute if entity @s[tag=IsDrawing,tag=WpnGswordGuardEnd] run function mhdp_weapons:weapon/great_sword/7_guard/main_end

# 終了
    tag @s remove IsDrawing
