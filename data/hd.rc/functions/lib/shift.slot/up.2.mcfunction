#> hd.rc:lib/shift.slot/up.2
#
# Slotを上に２ずらす
#
# @within function hd.rc:lib/shift.slot/

## 
	execute if data storage hd.rc:lib ShiftSlot[{Slot:19b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:19b}].Slot set value 1b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:20b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:20b}].Slot set value 2b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:21b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:21b}].Slot set value 3b
