#> mhdp_core:vfx/
#
# エフェクト表示 tick処理

# 会心
    execute if entity @s[tag=VfxCrit] run function mhdp_core:vfx/crit/

# 大剣
    # 汎用
        execute if entity @s[tag=VfxGswordS] run function mhdp_core:vfx/gsword/slash/
    # 溜め斬り
        execute if entity @s[tag=VfxGswordSc] run function mhdp_core:vfx/gsword/slash_charge/
