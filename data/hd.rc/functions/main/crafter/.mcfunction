#> hd.rc:main/crafter/
#
# レシピブックを開いていなかったら
#
# @within function hd.rc:main/changed.items

## 素材アイテムを減らすか確認
	execute if data entity @s data.Using.Recipe run function hd.rc:main/crafter/remove.material/check
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute unless score $HdRc.Changed HdRc.Temp matches 18 unless data storage hd.rc:temp ItemsCopy[{Slot:9b,tag:{HdRc:{RecipeBook:1b}}}] run function hd.rc:main/recipe_book/open
	execute unless score $HdRc.Changed HdRc.Temp matches 18 if data storage hd.rc:temp ItemsCopy[{Slot:9b,tag:{HdRc:{RecipeBook:1b}}}] run function hd.rc:main/crafter/repair.gui
## 特殊作業台のGUIが変っていなかったら、レシピの確認
	execute if score $HdRc.Changed HdRc.Temp matches 18 run function hd.rc:main/crafter/check.recipe/
