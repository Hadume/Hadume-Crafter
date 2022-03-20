#> hd.sct:block/open/
#
# 樽を開いたら
#
# @within advancement hd.sct:open.barrel

#> Tags
# @within function hd.sct:block/open/*
# @within function hd.sct:block/unlock
# @within function hd.sct:sct/tick
# @within function hd.sct:sct/inventory_changed
 #declare tag HdSctUsing
#> Tags
# @private
 #declare tag HdSctPos
## 進捗を再利用できるようにする
	advancement revoke @s only hd.sct:open.barrel
## どの樽を開いたか確認
	### Markerを召喚
		summon minecraft:marker ~ ~ ~ {Tags:["HdSctPos"]}
	### Markerを一番遠くまで飛ばす
		execute anchored eyes positioned ^ ^ ^6.4 facing entity @s eyes run tp @e[type=minecraft:marker,tag=HdSctPos] ~ ~ ~ ~ ~
	### 樽にTagを付ける
		tag @s add HdSctPos
		execute as @e[type=minecraft:marker,tag=HdSctPos] at @s positioned ^ ^ ^3.2 rotated as @e[tag=HdSctPos] positioned ^ ^ ^1.6 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.8 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.4 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.2 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.1 rotated as @e[tag=HdSctPos] positioned ^ ^ ^0.05 align xyz if block ~ ~ ~ minecraft:barrel[open=true] positioned ~0.5 ~0.03125 ~0.5 run tag @e[type=minecraft:marker,tag=HdSct,distance=..0.001] add HdSctThis
		tag @s remove HdSctPos
	### Markerを消す
		execute as @e[type=minecraft:marker,tag=HdSctPos] run kill @s
## プレイヤーにIDを渡す
	scoreboard players operation @s HdSct.ID = @e[type=minecraft:marker,tag=HdSctThis,limit=1] HdSct.ID
## SCTに鍵をかける
	execute as @e[type=minecraft:marker,tag=HdSctThis] at @s run function hd.sct:block/open/sct
## 音を消す
	stopsound @s * minecraft:block.barrel.open
