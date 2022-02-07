#> hd.sct:sct/tick
#
# SCTで常時実行
#
# @within function hd.sct:tick

## SCTを破壊
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function hd.sct:block/break
## SCTが開かれていたら
	execute if block ~ ~ ~ minecraft:barrel[open=true] run function hd.sct:sct/using
## SCTを閉じる]
	execute if block ~ ~ ~ minecraft:barrel[open=false] if entity @s[tag=HdSct.Using] run function hd.sct:block/lock/un
## 回す
	tp @s ~ ~ ~ ~10 ~
