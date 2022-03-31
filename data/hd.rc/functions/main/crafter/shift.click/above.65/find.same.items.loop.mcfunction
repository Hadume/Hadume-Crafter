#> hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
#
# 完成アイテムと同じアイテムを探す
#
# @within function hd.rc:main/crafter/shift.click/above.65/
# @private

## 比べるアイテムをコピー
	data modify storage hd.rc:lib ComparedItem2 set from storage hd.rc:temp InventoryCopy[-1]
## 同じアイテムか確認
	function hd.rc:lib/compare.item/id/
## 同じだったら、データを移動
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run data modify storage hd.rc:temp SameItems append from storage hd.rc:temp InventoryCopy[-1]
## データを削除
	data remove storage hd.rc:temp InventoryCopy[-1]
## ループ
	execute if data storage hd.rc:temp InventoryCopy[] run function hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
