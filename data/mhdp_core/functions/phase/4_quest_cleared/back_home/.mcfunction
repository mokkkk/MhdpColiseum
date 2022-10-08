#> mhdp_core:phase/4_quest_cleared/back_home/
#
# Phase4_クエストクリア 帰還処理

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_id
    scoreboard players reset #mhdp_quest_monster_count
    scoreboard players reset #mhdp_quest_death_count
    scoreboard players reset #mhdp_quest_timer

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 0

# プレイヤーの武器をリセット
    execute as @a run function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon

# プレイヤーの特殊装具をリセット(TO DO)
    # function ...

# プレイヤーを移動
    tp @a 168 61 21
    spawnpoint @a 168 61 21

# MhdpWeapons処理用タグ削除
    tag @a remove PlyQuest
    tag @a remove MnsTarget
    tag @a remove PlyWeaponDrawing
    tag @a remove PlyWeaponDrawingSub

# モンスター消去処理
    execute as @e[type=armor_stand,tag=MonsterRoot] run function mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster

# 報酬チェストコピー
    # function ...

# 村人再配置
    function mhdp_core:phase/0_village/villager/


