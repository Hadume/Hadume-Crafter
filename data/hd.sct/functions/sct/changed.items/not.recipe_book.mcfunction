#> hd.sct:sct/changed.items/not.recipe_book
#
# レシピブックを開いていなかったら
#
# @within function hd.sct:sct/changed.items/

## 素材アイテムを減らすか確認
	execute if data entity @s data.Using.Recipe run function hd.sct:sct/changed.items/remove.material/check
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute unless score $HdSct.Changed HdSct.Temp matches 18 unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:{RecipeBook:1b}}}] run function hd.sct:recipes/book/open
	execute unless score $HdSct.Changed HdSct.Temp matches 18 if data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:{RecipeBook:1b}}}] run function hd.sct:sct/changed.items/repair.gui
## 特殊作業台のGUIが変っていなかったら、レシピの確認
	execute if score $HdSct.Changed HdSct.Temp matches 18 run function hd.sct:recipes/check/
