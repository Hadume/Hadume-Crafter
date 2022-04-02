#> hd.rc:clear.items
#
# アイテムを削除する
#
# @within advancement hd.rc:clear.items

## 進捗を剝奪
	advancement revoke @s only hd.rc:clear.items
## 
	clear @s #hd.rc:all.items{HdRc:{}}
