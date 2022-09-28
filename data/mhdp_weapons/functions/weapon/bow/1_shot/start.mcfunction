#> mhdp_weapons:weapon/bow/1_shot/start
#
# 弓：射撃開始
#

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnBowShot

# 溜めスコア初期化
    scoreboard players set @s MhdpWeaponCharge 0

# 移動速度低下
    effect clear @s speed
    effect give @s slowness 1 3 true

# 集中力消費
    scoreboard players remove @s MhdpWeaponExt 60
    execute if entity @s[scores={MhdpWeaponExt=..-1}] run scoreboard players set @s MhdpWeaponExt 0

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    item modify entity @s weapon.mainhand mhdp_core:weapon/change_cmd
# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp

# 溜め段階に応じた矢を発射する
    function mhdp_weapons:weapon/bow/1_shot/attack

say 射撃