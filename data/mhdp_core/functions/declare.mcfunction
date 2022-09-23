#> mhdp_core:declare
#
# declare用

# tag
    #declare tag PlyUsedCoas プレイヤーがニンジン棒を使用した
    #declare tag PlySneakStart プレイヤーがスニークを開始した
    #declare tag PlySneakCurrent プレイヤーがスニーク中である
    #declare tag PlySneakEnd プレイヤーがスニークを解除した

# storage
    #declare storage mh_dp:status MHDP各種ステータス保存用

# objective
    #declare objective MhdpUsedCoas プレイヤーニンジン棒クリック検知に使用
    #declare objective MhdpJump プレイヤージャンプ検知に使用
    #declare objective MhdpTDamage プレイヤーダメージ後の無敵時間に使用
    #declare objective MhdpTAvoid プレイヤー回避無敵時間に使用
    #declare objective MhdpTSneakInterval プレイヤー連続スニーク検知用

