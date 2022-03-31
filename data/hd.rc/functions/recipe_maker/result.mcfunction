#> hd.rc:recipe_maker/result
#
# 完成アイテムが有ったら
#
# @within function hd.rc:recipe_maker/check

## データを移動
	data modify storage hd.rc:temp Tell.Result set from storage hd.rc:temp ItemsCopy[{Slot:15b}]
	data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
## レシピを出力
	execute if data storage hd.rc:temp ItemsCopy[] run function hd.rc:recipe_maker/export
