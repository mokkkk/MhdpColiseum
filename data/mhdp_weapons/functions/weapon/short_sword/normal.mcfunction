#> mhdp_weapons:weapon/short_sword/normal
#
# 片手剣のメイン処理・通常
#
#declare tag WpnSsword2DA 片手剣突進斬り
#declare tag WpnSsword3Guard 片手剣ガード
#declare tag WpnSsword4SB1 片手剣盾攻撃1
#declare tag WpnSsword5SB2 片手剣盾攻撃2
#declare tag WpnSsword6Spin 片手剣回転斬り
#declare tag WpnSsword7Step 片手剣バックステップ
#declare tag WpnSsword8CA 片手剣溜め斬り
#declare tag WpnSsword9Jump 片手剣駆け上がり斬り
#declare tag WpnSsword10Fall 片手剣フォールバッシュ
#declare tag WpnSsword11Just0 片手剣ジャストラッシュ
#declare tag WpnSsword12Just1 片手剣ジャストラッシュ
#declare tag WpnSsword13Just2 片手剣ジャストラッシュ
#declare tag WpnSsword14Just3 片手剣ジャストラッシュ
#declare tag WpnSsword15Wire 片手剣飛影
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
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword3GuardEnd,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!WpnSsword6Spin,tag=!WpnSsword7Step,tag=!WpnSsword8CA,tag=!WpnSsword9Jump,tag=!WpnSsword10Fall,tag=!WpnSsword11Just0,tag=!WpnSsword12Just1,tag=!WpnSsword13Just2,tag=!WpnSsword14Just3,tag=!WpnSsword15Wire,tag=!PlySneakAvoidFunc,tag=!PlyUsingEyeCurrent,tag=PlySneakCurrent,tag=!IsSpin] run function mhdp_weapons:weapon/short_sword/3_guard/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword3Guard] run function mhdp_weapons:weapon/short_sword/3_guard/main
    execute if entity @s[tag=IsDrawing,tag=WpnSsword3GuardEnd] run function mhdp_weapons:weapon/short_sword/3_guard/main_end

## 4_盾攻撃１
# 右クリック
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword3GuardEnd,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!WpnSsword6Spin,tag=!WpnSsword7Step,tag=!WpnSsword8CA,tag=!WpnSsword9Jump,tag=!WpnSsword10Fall,tag=!WpnSsword11Just0,tag=!WpnSsword12Just1,tag=!WpnSsword13Just2,tag=!WpnSsword14Just3,tag=!WpnSsword15Wire,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=!PlySneakCurrent,tag=!IsSpin] run function mhdp_weapons:weapon/short_sword/4_bash/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword4SB1] run function mhdp_weapons:weapon/short_sword/4_bash/main

## 5_盾攻撃２
# 盾攻撃１ → 右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnSsword5SB2] run function mhdp_weapons:weapon/short_sword/5_back_bash/main

## 6_回転斬り
# 攻撃後 → スニーク+右クリック
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword3GuardEnd,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!WpnSsword6Spin,tag=!WpnSsword7Step,tag=!WpnSsword8CA,tag=!WpnSsword9Jump,tag=!WpnSsword10Fall,tag=!WpnSsword11Just0,tag=!WpnSsword12Just1,tag=!WpnSsword13Just2,tag=!WpnSsword14Just3,tag=!WpnSsword15Wire,tag=!PlySneakAvoidFunc,tag=PlyUsingEyeStart,tag=IsSpin] run function mhdp_weapons:weapon/short_sword/6_spin/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword6Spin] run function mhdp_weapons:weapon/short_sword/6_spin/main

## 7_バックステップ
# 攻撃後 → スニーク+ジャンプ
    execute if entity @s[tag=!PlyWeaponDeactivate,tag=IsDrawing,tag=!WpnSsword2DA,tag=!WpnSsword3Guard,tag=!WpnSsword3GuardEnd,tag=!WpnSsword4SB1,tag=!WpnSsword5SB2,tag=!WpnSsword6Spin,tag=!WpnSsword7Step,tag=!WpnSsword8CA,tag=!WpnSsword9Jump,tag=!WpnSsword10Fall,tag=!WpnSsword11Just0,tag=!WpnSsword12Just1,tag=!WpnSsword13Just2,tag=!WpnSsword14Just3,tag=!WpnSsword15Wire,tag=!PlySneakAvoidFunc,tag=IsSpin,scores={MhdpJump=1..}] run function mhdp_weapons:weapon/short_sword/7_step/start
    execute if entity @s[tag=IsDrawing,tag=WpnSsword7Step] run function mhdp_weapons:weapon/short_sword/7_step/main

## 8_溜め斬り
# バックステップ → 右クリック長押し
    execute if entity @s[tag=IsDrawing,tag=WpnSsword8CA] run function mhdp_weapons:weapon/short_sword/8_charge_attack/main

## 9_駆け上がり斬り
# 溜め斬り → ヒット時自動発動
    execute if entity @s[tag=IsDrawing,tag=WpnSsword9Jump] run function mhdp_weapons:weapon/short_sword/9_jump/main

## 10_フォールバッシュ
# 駆け上がり斬り → 右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnSsword10Fall] run function mhdp_weapons:weapon/short_sword/10_fall/main

## 11-14_ジャストラッシュ
# バックステップ → 右クリック
    execute if entity @s[tag=IsDrawing,tag=WpnSsword11Just0] run function mhdp_weapons:weapon/short_sword/11_just_0/main
    execute if entity @s[tag=IsDrawing,tag=WpnSsword12Just1] run function mhdp_weapons:weapon/short_sword/12_just_1/main
    execute if entity @s[tag=IsDrawing,tag=WpnSsword13Just2] run function mhdp_weapons:weapon/short_sword/13_just_2/main
    execute if entity @s[tag=IsDrawing,tag=WpnSsword14Just3] run function mhdp_weapons:weapon/short_sword/14_just_3/main

## 15_飛影
# 翔蟲中，抜刀攻撃
    execute if entity @s[tag=IsDrawing,tag=WpnSsword15Wire] run function mhdp_weapons:weapon/short_sword/15_wire/main

# 終了
    tag @s remove IsDrawing
    tag @s remove IsSpin
