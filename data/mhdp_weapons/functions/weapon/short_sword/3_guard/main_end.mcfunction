#> mhdp_weapons:weapon/short_sword/3_guard/main_end
#
# 片手剣：ガード終了

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 移動禁止を緩める
    effect give @s slowness 1 3 true

# モデル変更
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/short_sword/99_reset/model
# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] run playsound item.armor.equip_chain master @a ~ ~ ~ 1 0.5

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=10..}] run function mhdp_weapons:weapon/short_sword/3_guard/end
