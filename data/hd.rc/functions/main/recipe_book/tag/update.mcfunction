#> hd.rc:main/recipe_book/tag/update
#
# Tagを更新
#
# @within function hd.rc:main/recipe_book/tag/

## データをコピー
	data modify storage hd.rc:temp TagCopy append from entity @s data.Using.RecipeBookTag.Data[]
## 仮要素を追加
	data modify storage hd.rc:temp TagCopy append from storage hd.rc: Blank[]
## アイテムを選択
	function hd.rc:main/recipe_book/tag/loop
## 仮要素を削除
	execute if data storage hd.rc:temp TagCopy[{_:1b}] run data remove storage hd.rc:temp TagCopy[{_:1b}]
	data modify storage hd.rc:temp TagItems[].tag.HdRc.Tag set value 1b
## データを上書き
	data modify entity @s data.Using.RecipeBookTag.Data set from storage hd.rc:temp TagCopy
## アイテムを表示
	data modify block ~ ~ ~ Items append from storage hd.rc:temp TagItems[]
## アイテムを保存
	data remove entity @s data.Using.RecipeBook[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{tag:{HdRc:{Tag:1b}}}]
	data modify entity @s data.Using.RecipeBook[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items append from storage hd.rc:temp TagItems[]
## 更新タイミングを設定
	data modify entity @s data.Using.RecipeBookTag.Count set value 20
## Storageを削除
	data remove storage hd.rc:temp TagCopy
	data remove storage hd.rc:temp TagItems
