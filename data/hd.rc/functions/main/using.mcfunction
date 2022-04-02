#> hd.rc:main/using
#
# RCを開いていたら
#
# @within function hd.rc:main/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.ChangedItems
## RCのアイテムが変ったか確認
	execute store success score $HdRc.ChangedItems HdRc.Temp run data modify entity @s data.Using.Items set from block ~ ~ ~ Items
	execute if score $HdRc.ChangedItems HdRc.Temp matches 1 run function hd.rc:main/changed.items/
## レシピアイテムのTagを表示
	execute if entity @s[scores={HdRc.Page=0..},nbt={data:{Using:{RecipeBookTag:{}}}}] run function hd.rc:main/recipe_book/tag/
## ScoreHolderを削除
	scoreboard players reset $HdRc.ChangedItems
