#> hd.rc:main/changed.items
#
# SCTの中身が変ってたら
#
# @within function hd.rc:main/using

#> ScoreHolder
# @private
# @within function
#   hd.rc:main/crafter/
#   hd.rc:main/crafter/remove.material/check
 #declare score_holder $HdRc.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.rc:temp ItemsCopy set from entity @s data.Using.Items
## SCT内のアイテムの数を取得
	execute store result score $HdRc.Changed HdRc.Temp if data storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## レシピブックを開いていたら
	execute if entity @s[scores={HdRc.Page=1..}] run function hd.rc:main/recipe_book/
## レシピブックを開いていなかったら
	execute unless entity @s[scores={HdRc.Page=1..}] if data storage hd.rc:temp ItemsCopy[] run function hd.rc:main/crafter/
## 一時使用Storageをリセット
	data remove storage hd.rc:temp ItemsCopy
## 個人ストレージに保存
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
