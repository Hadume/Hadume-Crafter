#> hd.sct:recipes/book/find/loop
#
# 
#
# @within function hd.sct:recipes/book/find/
# @private

## ページを取得
	execute store result score $HdSct.Page.1 HdSct.Temp run data get storage hd.sct:temp PageCopy[0].Page
## ページを比較、違ったら削除
	execute unless score $HdSct.Page.1 HdSct.Temp = @s HdSct.Page run data remove storage hd.sct:temp PageCopy[0]
## ループ
	execute unless score $HdSct.Page.1 HdSct.Temp = @s HdSct.Page if data storage hd.sct:temp PageCopy[] run function hd.sct:recipes/book/find/loop
