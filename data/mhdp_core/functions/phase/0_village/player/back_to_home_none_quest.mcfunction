#> mhdp_core:phase/0_village/player/back_to_home_none_quest
#
# クエストに参加しなかったプレイヤーを拠点に強制帰還（非クエスト中）

# プレイヤーの状態リセット
    function mhdp_core:player/death/reset

# プレイヤーの武器をリセット
    function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon

# プレイヤーの特殊装具をリセット
    function mhdp_core:phase/4_quest_cleared/back_home/setup/item

# プレイヤーを移動
    tp @s 266 63 204
    spawnpoint @s 266 63 204

# MhdpWeapons処理用タグ削除
    tag @s remove PlyQuest
    tag @s remove MnsTarget
    tag @s remove PlyWeaponDrawing
    tag @s remove PlyWeaponDrawingSub

# メッセージ表示
    tellraw @s {"text": "【クエストが開始されていないため，拠点に帰還します】"}
