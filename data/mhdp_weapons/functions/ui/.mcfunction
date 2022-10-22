#> mhdp_weapons:ui/
#
# UI表示処理等
#

# 初期化
    data modify storage mhdp_core:temp Temp.UI set value {Sharpness:{},Stamina:{},StaminaArray:[]}

# 斬れ味
    function mhdp_weapons:ui/sharpness/

# 武器ごとの特殊ゲージ
    function mhdp_weapons:ui/ex/

# アイテム
    function mhdp_weapons:ui/item/

# スタミナ
    function mhdp_weapons:ui/stamina/

# UI表示
    title @s actionbar ["",{"text": "\uF999\uF999\uF821\uF999\uF999"},{"interpret":true,"nbt":"Temp.UI.Sharpness","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Ex","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Item","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Item","storage":"mhdp_core:temp"},{"text": " \uF812\uF888\uF888\uF888\uF999"},{"interpret":true,"nbt":"Temp.UI.Stamina","storage":"mhdp_core:temp"}]
    # title @s actionbar [{"interpret":true,"nbt":"Temp.UI.Sharpness","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Ex","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Item","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Item","storage":"mhdp_core:temp"},{"text": " "},{"interpret":true,"nbt":"Temp.UI.Stamina","storage":"mhdp_core:temp"}]

# 終了
    data remove storage mhdp_core:temp Temp
