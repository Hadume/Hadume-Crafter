#> hd.rc:main/
#
# RCで常時実行
#
# @within function hd.rc:rc

## RCを破壊
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function hd.rc:block/break/
## RCを閉じる
	execute if entity @s[tag=HdRcUsing] if block ~ ~ ~ minecraft:barrel[open=false] run function hd.rc:block/unlock
## RCが開かれていたら
	execute if entity @s[tag=HdRcUsing] run function hd.rc:main/using
## ホッパーへの搬出を止める
	execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value -2147483648
