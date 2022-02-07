#> hd.sct:block/lock/un
#
# SCTの鍵を開ける
#
# @within function hd.sct:sct/tick

## 
	data remove block ~ ~ ~ Lock
## 個人ストレージを呼ぶ
	function #oh_my_dat:please
## データを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using
## Tagを外す
	tag @s remove HdSct.Using
