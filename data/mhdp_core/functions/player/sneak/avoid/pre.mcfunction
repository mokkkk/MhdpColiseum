#> mhdp_core:player/sneak/avoid/pre
#
# １回目のスニーク時に実行する処理

# スニークタイマー設定
    scoreboard players set @s MhdpTSneakInterval 7

# 位置保存
    function oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Action.SneakPos0
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Action.SneakPos0 set from entity @s Pos

say 1回目スニーク