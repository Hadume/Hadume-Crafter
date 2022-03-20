#> hd.sct:main/recipe_book/reset/tell
#
# 
#
# @within function hd.sct:tick

## 
	function hd.sct:main/recipe_book/reset/
## レシピが減ったと伝える
	tellraw @a [{"storage": "hd.sct:","nbt":"tellrawName"},{"text": " "},{"text": "レシピが削除されました。","color": "red"}]
