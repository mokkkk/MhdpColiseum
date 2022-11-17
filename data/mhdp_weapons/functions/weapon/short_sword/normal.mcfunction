#> mhdp_weapons:weapon/short_sword/normal
#
# 片手剣のメイン処理・通常
#
#declare tag WpnSsword2DA 片手剣突進斬り

#declare tag WpnSswordGuard 片手剣ガード中
#declare tag RClicked 右クリック入力保存

# 0_常時実行：
    function mhdp_weapons:weapon/short_sword/0_tick/

## 1_抜刀攻撃（突進斬り）：
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=!IsDrawing,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart] run function mhdp_weapons:weapon/short_sword/1_draw_act/start

## 2_突進斬り：
# 抜刀攻撃
# バックステップ → 無操作
    execute if entity @s[tag=IsDrawing,tag=WpnSsword2DA] run function mhdp_weapons:weapon/short_sword/2_dash_attack/main

# 終了
    tag @s remove IsDrawing
