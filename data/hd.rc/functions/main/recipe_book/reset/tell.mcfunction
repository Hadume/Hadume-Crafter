#> hd.rc:main/recipe_book/reset/tell
#
# 
#
# @within function hd.rc:tick

## 
	function hd.rc:main/recipe_book/reset/
## レシピが減ったと伝える
	tellraw @a [{"storage": "hd.rc:","nbt":"tellrawName"},{"text": " "},{"text": "レシピが削除されました。","color": "red"}]
