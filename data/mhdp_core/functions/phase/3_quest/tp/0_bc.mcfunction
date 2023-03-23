#> mhdp_core:phase/3_quest/tp/0_bc
#
# Phase3_クエスト中待機 エリア移動

# 移動
    tp @s 196 66 144

# 1秒間だけダメージを軽減する
    effect give @s resistance 1 3 true

# モンスターターゲット用タグ消去
    tag @s remove MnsTarget
