#> mhdp_weapons:weapon/short_sword/normal
#
# 片手剣のメイン処理・通常
#
#declare tag WpnSsword2DA 片手剣突進斬り
#declare tag WpnSsword3Guard 片手剣ガード
#declare tag WpnSsword4SB1 片手剣盾攻撃1
#declare tag WpnSsword5SB2 片手剣盾攻撃2

#declare tag RClicked 右クリック入力保存

# 0_常時実行：
    function mhdp_weapons:weapon/short_sword/0_tick/

## 1_抜刀攻撃（突進斬り）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/short_sword/1_draw_act/start

## 2_突進斬り：
# 抜刀攻撃
# バックステップ → 無操作
    execute if entity @s[tag=IsDrawing,tag=WpnSsword2DA] run function mhdp_weapons:weapon/short_sword/2_dash_attack/main

## 3_ガード
# スニーク
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!PlySneakAvoidFunc,tag=!PlyUsingEyeCurrent,tag=PlySneakCurrent] run function mhdp_weapons:weapon/short_sword/3_guard/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword3Guard] run function mhdp_weapons:weapon/short_sword/3_guard/main
    execute if entity @s[tag=IsDrawing,tag=WpnSsword3GuardEnd] run function mhdp_weapons:weapon/short_sword/3_guard/main_end

## 4_盾攻撃１
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=!PlySneakCurrent] run function mhdp_weapons:weapon/short_sword/4_bash/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword4SB1] run function mhdp_weapons:weapon/short_sword/4_bash/main

## 5_盾攻撃２
    execute if entity @s[tag=IsDrawing,tag=WpnSsword5SB2] run function mhdp_weapons:weapon/short_sword/5_back_bash/main

# 終了
    tag @s remove IsDrawing
