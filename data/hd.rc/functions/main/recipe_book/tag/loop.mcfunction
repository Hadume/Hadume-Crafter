#> hd.rc:main/recipe_book/tag/loop
#
# アイテムを選択
#
# @within function hd.rc:main/recipe_book/tag/update
# @private

## 要素を消す
	execute if data storage hd.rc:temp TagCopy[-10].Value[] run data remove storage hd.rc:temp TagCopy[-10].Value[0]
## 要素が無くなったら、元に戻す
	execute unless data storage hd.rc:temp TagCopy[-10].Value[] run data modify storage hd.rc:temp TagCopy[-10].Value set from storage hd.rc:temp TagCopy[-10].Origin
## 表示するアイテムを抽出
	data modify storage hd.rc:temp TagItems append from storage hd.rc:temp TagCopy[-10].Item
	data modify storage hd.rc:temp TagItems[-1].id set from storage hd.rc:temp TagCopy[-10].Value[0]
## データをずらす
	data remove storage hd.rc:temp TagCopy[-1]
## データがあったら、ループ
	execute if data storage hd.rc:temp TagCopy[-10] run function hd.rc:main/recipe_book/tag/loop
