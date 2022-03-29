#> hd.rc:block/open/
#
# 樽を開いたら
#
# @within advancement hd.rc:open.barrel

#> Tags
# @within function hd.rc:block/open/*
# @within function hd.rc:block/unlock
# @within function hd.rc:main/
# @within function hd.rc:inventory_changed
 #declare tag HdSctUsing
#> Tags
# @private
 #declare tag HdSctPos
## 進捗を再利用できるようにする
	advancement revoke @s only hd.rc:open.barrel
## どの樽を開いたか確認
	### Markerを召喚
		summon minecraft:marker ~ ~ ~ {Tags:["HdSctPos"]}
	### Markerを一番遠くまで飛ばす
		execute anchored eyes positioned ^ ^ ^6.4 facing entity @s eyes run tp @e[type=minecraft:marker,tag=HdSctPos] ~ ~ ~ ~ ~
	### 樽にTagを付ける
		tag @s add HdSctPos
		execute as @e[type=minecraft:marker,tag=HdSctPos] at @s positioned ^ ^ ^3.2 rotated as @e[tag=HdSctPos] positioned ^ ^ ^1.6 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.8 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.4 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.2 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.1 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.05 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.025 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.0125 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.00625 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.003125 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.0015625 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.00078125 align xyz if block ~ ~ ~ minecraft:barrel[open=true] positioned ~0.5 ~0.03125 ~0.5 run tag @e[type=minecraft:marker,tag=HdRc,distance=..0.001] add HdSctThis
		tag @s remove HdSctPos
	### Markerを消す
		execute as @e[type=minecraft:marker,tag=HdSctPos] run kill @s
## プレイヤーにIDを渡す
	scoreboard players operation @s HdRc.ID = @e[type=minecraft:marker,tag=HdSctThis,limit=1] HdRc.ID
## SCTに鍵をかける
	execute as @e[type=minecraft:marker,tag=HdSctThis] at @s run function hd.rc:block/open/sct
## 音を消す
	stopsound @s * minecraft:block.barrel.open
