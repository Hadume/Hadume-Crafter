#> hd.rc:main/open/
#
# ラクラクラフターを開く
#
# @within advancement hd.rc:open.barrel

#> Tags
# @within function hd.rc:main/open/*
# @within function hd.rc:block/unlock
# @within function hd.rc:main/
# @within function hd.rc:inventory_changed
 #declare tag HdRcUsing
#> Tags
# @private
 #declare tag HdRcPos
## 進捗を再利用できるように
	advancement revoke @s only hd.rc:open.barrel
## どの樽を開いたか確認
	### Markerを召喚
		summon minecraft:marker ~ ~ ~ {Tags:["HdRcPos"]}
	### Markerを遠くまで飛ばす
		execute anchored eyes positioned ^ ^ ^6.4 facing entity @s eyes run tp @e[type=minecraft:marker,tag=HdRcPos] ~ ~ ~ ~ ~
	### 樽にTagを付ける
		tag @s add HdRcPos
		execute as @e[type=minecraft:marker,tag=HdRcPos] at @s positioned ^ ^ ^3.2 rotated as @e[tag=HdRcPos] positioned ^ ^ ^1.6 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.8 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.4 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.2 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.1 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.05 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.025 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.0125 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.00625 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.003125 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.0015625 rotated as @e[tag=HdRcPos] positioned ^ ^ ^0.00078125 align xyz if block ~ ~ ~ minecraft:barrel[open=true] positioned ~0.5 ~0.03125 ~0.5 run tag @e[type=minecraft:marker,tag=HdRc,distance=..0.001] add HdRcThis
		tag @s remove HdRcPos
	### Markerを消す
		execute as @e[type=minecraft:marker,tag=HdRcPos] run kill @s
## プレイヤーにIDを渡す
	scoreboard players operation @s HdRc.ID = @e[type=minecraft:marker,tag=HdRcThis,limit=1] HdRc.ID
## RC
	execute as @e[type=minecraft:marker,tag=HdRcThis] at @s run function hd.rc:main/open/rc
## 音を消す
	stopsound @s * minecraft:block.barrel.open
