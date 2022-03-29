#> hd.rc:main/using
#
# 使っていたら
#
# @within function hd.rc:main/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.ChangedItems
## SCTの中身が変ったか確認
	execute store success score $HdRc.ChangedItems HdRc.Temp run data modify entity @s data.Using.Items set from block ~ ~ ~ Items
	execute if score $HdRc.ChangedItems HdRc.Temp matches 1 if entity @s[tag=!HdSctRM] run function hd.rc:main/changed.items
	execute if score $HdRc.ChangedItems HdRc.Temp matches 1 if entity @s[tag=HdSctRM] run function hd.rc:recipe_maker/
	execute if score $HdRc.ChangedItems HdRc.Temp matches 1 run say アイテム変ったよ
## レシピのTagを表示
	execute if entity @s[scores={HdRc.Page=0..}] if data entity @s data.Using.RecipeBookTag run function hd.rc:main/recipe_book/tag/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdRc.ChangedItems
tellraw @a {"text":""}
