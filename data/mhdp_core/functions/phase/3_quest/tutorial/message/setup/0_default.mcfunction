#> mhdp_core:phase/3_quest/tutorial/message/setup/0_default
#
# Phase3_クエスト中 訓練中処理 メッセージ追加処理

# 改行
    tellraw @a {"text": ""}
    
## 基本操作説明
# それでは，武器の基礎について説明しよう！
# モンスターとの戦いには，武器の使い方が重要だ！
# 右手に何もアイテムを持っていないときに{key.swapOffhand}キーを押すと，抜刀ができる！
# 逆に，右手に武器を持っているときに{key.swapOffhand}キーを押すか，別のアイテムを持つと自動的に納刀するぞ！
# 大剣のような武器は，抜刀中移動速度が低下してしまう！
# うまく抜刀と納刀を使い分けて，自分のペースで戦うんだ！
# ちなみに，右手にアイテムを持っていないときにマウスの{key.use}をクリックすることで，抜刀攻撃ができる！
# モンスターの隙を見て素早く攻撃したいときに便利だ！
# 抜刀攻撃は武器ごとに性質が違うから，しっかり確認しておくんだぞ！
# 以上だ！
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"以上だ！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"抜刀攻撃は武器ごとに性質が違うから，しっかり確認しておくんだぞ！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"モンスターの隙を見て素早く攻撃したいときに便利だ！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '[{"text":"ちなみに，右手にアイテムを持っていないときにマウスの["},{"keybind":"key.use"},{"text":"]をクリックすることで，抜刀攻撃ができる！"}]'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"うまく抜刀と納刀を使い分けて，自分のペースで戦うんだ！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"大剣のような武器は，抜刀中は移動速度が低下してしまう！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '[{"text":"逆に，右手に武器を持っているときに["},{"keybind":"key.swapOffhand"},{"text":"キー]を押すか，別のアイテムを持つと自動的に納刀するぞ！"}]'
    data modify storage mhdp_core:temp Tutorial.Messages append value '[{"text":"右手に何もアイテムを持っていないときに["},{"keybind":"key.swapOffhand"},{"text":"キー]を押すと，抜刀ができる！"}]'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"モンスターとの戦いにおいては，武器の扱いが重要だ！"}'
    data modify storage mhdp_core:temp Tutorial.Messages append value '{"text":"それでは，狩りの基本について教えよう！"}'
