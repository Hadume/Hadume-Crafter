#> hd.rc:main/recipe_book/air
#
# レシピアイテムSlotを削除
#
# @within function
#   hd.rc:main/recipe_book/page/change/*
#   hd.rc:main/recipe_book/display.materials/
#   hd.rc:main/recipe_book/page/change/next/make.page

## 
	execute if data storage hd.rc:temp ItemsCopy[{Slot:6b}] run item replace block ~ ~ ~ container.6 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:7b}] run item replace block ~ ~ ~ container.7 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:8b}] run item replace block ~ ~ ~ container.8 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:15b}] run item replace block ~ ~ ~ container.15 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:16b}] run item replace block ~ ~ ~ container.16 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:17b}] run item replace block ~ ~ ~ container.17 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:24b}] run item replace block ~ ~ ~ container.24 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:25b}] run item replace block ~ ~ ~ container.25 with minecraft:air
	execute if data storage hd.rc:temp ItemsCopy[{Slot:26b}] run item replace block ~ ~ ~ container.26 with minecraft:air
