#> hd.rc:main/recipe_book/reset/
#
# レシピブックを削除
#
# @within function
#   hd.rc:main/recipe_book/reset/tell
#   hd.rc:add.recipes/

#> ScoreHolder
# @within function hd.rc:tick
# @private
 #declare score_holder $HdRc.Recipes.Now
 #declare score_holder $HdRc.Recipes.Before
## レシピブックを削除
	execute if data storage hd.rc:recipe_book _ run data remove storage hd.rc:recipe_book _
## ページ数を削除
	execute if score $HdRc.Page HdRc.Global matches ..2147483647 run scoreboard players reset $HdRc.Page
## レシピデータを設定
	data remove storage hd.rc:recipe_book NotYet
	data modify storage hd.rc:recipe_book NotYet append from storage hd.rc.asset:recipes _[][]
## 前の値と今の値を同じに
	execute store result score $HdRc.Recipes.Before HdRc.Global if data storage hd.rc.asset:recipes _[][]
