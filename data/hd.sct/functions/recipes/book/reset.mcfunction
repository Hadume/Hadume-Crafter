#> hd.sct:recipes/book/reset
#
# レシピブックの内容をリセット
#
# @within function hd.sct:tick

#> ScoreHolder
# @within function hd.sct:tick
# @private
 #declare score_holder $HdSct.Recipes.Now
 #declare score_holder $HdSct.Recipes.Before
## レシピブックをリセットする
	data remove storage hd.sct:recipe_book _
## ページカウントをリセット
	scoreboard players reset $HdSct.Page
## レシピデータをセットする
	data remove storage hd.sct:recipe_book NotYet
	data modify storage hd.sct:recipe_book NotYet append from storage hd.sct.asset:recipes _[][]
## 前の数値と今の数値を同じにする
	scoreboard players operation $HdSct.Recipes.Before HdSct.Global = $HdSct.Recipes.Now HdSct.Global
## レシピが減ったと伝える
	tellraw @a [{"storage": "hd.sct:","nbt":"tellrawName"},{"text": " "},{"text": "レシピが削除されました。","color": "red"}]
