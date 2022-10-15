#> mhdp_core:player/blight/fire/end
#
# 属性やられ処理 火属性やられ終了

# 演出
    particle poof ~ ~1 ~ 0.5 0.5 0.5 0 5
    playsound block.fire.extinguish master @a ~ ~ ~ 1 1

# wither消去
    effect clear @s wither

# タグ消去
    tag @s remove BltFire

# 属性やられ終了時共通処理
    function mhdp_core:player/blight/common_end
