#> hd.rc:main/recipe_book/page/find/loop
#
# ページを探す
#
# @within function hd.rc:main/recipe_book/page/find/
# @private

## ページ数を取得
	execute store result score $HdRc.Page.1 HdRc.Temp run data get storage hd.rc:temp PageCopy[0].Page
## ページを比較、違ったら削除
	execute unless score $HdRc.Page.1 HdRc.Temp = @s HdRc.Page run data remove storage hd.rc:temp PageCopy[0]
## ループ
	execute unless score $HdRc.Page.1 HdRc.Temp = @s HdRc.Page if data storage hd.rc:temp PageCopy[] run function hd.rc:main/recipe_book/page/find/loop
