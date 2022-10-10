#> mhdp_core:player/death/check
#
# プレイヤー死亡時処理（advancements内） 体力確認

# 体力が0以下の場合，死亡とみなしてfunction実行
    execute if entity @s[nbt={Health:0.0f}] run function mhdp_core:player/death/advancements
