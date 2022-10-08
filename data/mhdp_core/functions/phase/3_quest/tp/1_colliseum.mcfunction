#> mhdp_core:phase/3_quest/tp/1_colliseum
#
# Phase3_クエスト中待機 エリア移動

# 移動
    tp @s -18 66 87

# 1秒間だけダメージを軽減する
    effect give @s resistance 1 3 true

# モンスターターゲット用タグを付ける
    tag @s add MnsTarget
