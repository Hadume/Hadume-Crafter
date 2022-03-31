#> hd.rc:main/open/rc
#
# RC
#
# @within function hd.rc:main/open/

## SCTに鍵をかける
	data modify block ~ ~ ~ Lock set value "§§"
## UIを設定
	function hd.rc:main/ui/
## アイテムを保存
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## タグを付ける
	tag @s add HdRcUsing
## 仮Tagを外す
	tag @s remove HdRcThis
