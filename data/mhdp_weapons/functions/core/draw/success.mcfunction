#> mhdp_weapons:core/draw/success
#
# 抜刀成功時

# 抜刀中タグ付与
    tag @s add PlyWeaponDrawing

# サブ武器が存在する武器種の場合
    # function mhdp_weapons:core/draw/sub/

# 武器に応じた納刀処理
    function mhdp_weapons:core/draw/weapon

# 演出
    playsound item.armor.equip_iron master @a ~ ~ ~ 1 1

# 終了
    scoreboard players reset #mhdp_temp_cmd
    data remove storage mhdp_core:temp Temp
