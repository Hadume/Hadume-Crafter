#> hd.sct:main/recipe_book/page/find/loop
#
# 
#
# @within function hd.sct:main/recipe_book/page/find/
# @private

## ページを取得
	execute store result score $HdSct.Page.1 HdSct.Temp run data get storage hd.sct:temp PageCopy[0].Page
## ページを比較、違ったら削除
	execute unless score $HdSct.Page.1 HdSct.Temp = @s HdSct.Page run data remove storage hd.sct:temp PageCopy[0]
## ループ
	execute unless score $HdSct.Page.1 HdSct.Temp = @s HdSct.Page if data storage hd.sct:temp PageCopy[] run function hd.sct:main/recipe_book/page/find/loop
