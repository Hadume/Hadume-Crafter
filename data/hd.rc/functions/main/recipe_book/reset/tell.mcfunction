#> hd.rc:main/recipe_book/reset/tell
#
# レシピが減ったら
#
# @within function hd.rc:tick

## レシピブックを削除
	function hd.rc:main/recipe_book/reset/
## レシピが減ったと伝える
	tellraw @a [{"storage": "hd.rc:","nbt":"tellrawName"},{"text": " "},{"text": "レシピが削除されました。","color": "red"}]
