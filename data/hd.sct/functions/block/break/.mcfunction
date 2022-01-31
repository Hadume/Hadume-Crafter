#> hd.sct:block/break/
#
# 特殊作業台を破壊する
#
# @within function hd.sct:tick

## 個人ストレージを呼ぶ
	function #oh_my_dat:please
## 樽を破壊した人に、アイテムを返す
	execute as @a[scores={HdSct.Mined.Barrel=1..},sort=nearest,limit=1] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:1b} run loot give @s loot hd.sct:sct.item_frame
	execute as @a[scores={HdSct.Mined.Barrel=1..},sort=nearest,limit=1] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:0b} run loot give @s loot hd.sct:sct.glow_item_frame
## 樽を壊した人がいなかったら、その場に召喚する
	execute unless entity @a[scores={HdSct.Mined.Barrel=1..}] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:1b} run loot spawn ~ ~1 ~ loot hd.sct:sct.item_frame
	execute unless entity @a[scores={HdSct.Mined.Barrel=1..}] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:0b} run loot spawn ~ ~1 ~ loot hd.sct:sct.glow_item_frame
## 樽の名前を消す
	execute as @e[type=minecraft:item,distance=..1] if data entity @s {Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}}} if data entity @s Item.tag.display.Name run data remove entity @s Item.tag.display
## SCTを消す
	kill @s
