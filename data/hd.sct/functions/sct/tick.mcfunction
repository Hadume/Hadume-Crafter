#> hd.sct:sct/tick
#
# SCTで常時実行
#
# @within function hd.sct:tick

## SCTを破壊
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function hd.sct:block/break
## SCTが開かれていたら
	execute if entity @s[tag=HdSctUsing] run function hd.sct:sct/using
## SCTを閉じる
	execute if entity @s[tag=HdSctUsing] if block ~ ~ ~ minecraft:barrel[open=false] run function hd.sct:block/unlock
## 
	execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~ ~ TransferCooldown set value -2147483648
## 回す
	tp @s ~ ~ ~ ~10 ~
