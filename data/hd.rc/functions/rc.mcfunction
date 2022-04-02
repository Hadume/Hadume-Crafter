#> hd.rc:rc
#
# RC
#
# @within function hd.rc:tick

## RCで常時実行
	execute if entity @s[type=minecraft:marker] run function hd.rc:main/
## RCを回す
	execute if entity @s[type=minecraft:armor_stand] run tp @s ~ ~ ~ ~9 ~
