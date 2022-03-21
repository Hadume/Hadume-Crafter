#> hd.sct:main/
#
# SCTで常時実行
#
# @within function hd.sct:tick

## SCTを破壊
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function hd.sct:block/break/
## SCTを閉じる
	execute if entity @s[tag=HdSctUsing] if block ~ ~ ~ minecraft:barrel[open=false] run function hd.sct:block/unlock
## SCTが開かれていたら
	execute if entity @s[tag=HdSctUsing] run function hd.sct:main/using
## 
	execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value -2147483648
