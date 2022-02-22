#> hd.sct:sct/changed.items/not.recipe_book
#
# レシピブックを開いていなかったら
#
# @within function hd.sct:sct/changed.items/

## 素材アイテムを減らすか確認
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run function hd.sct:sct/changed.items/remove.material/check
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run scoreboard players add $HdSct.Changed HdSct.Temp 1
	execute unless score $HdSct.Changed HdSct.Temp matches 18 if data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSctRecipeBook:1b}}] run function hd.sct:sct/changed.items/repair.gui/
	execute unless score $HdSct.Changed HdSct.Temp matches 18 unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSctRecipeBook:1b}}] run function hd.sct:recipes/book/open
## 特殊作業台のGUIが変っていなかったら、レシピの確認
	execute if score $HdSct.Changed HdSct.Temp matches 18 run function hd.sct:recipes/check/
