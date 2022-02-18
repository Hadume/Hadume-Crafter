#> hd.sct:lib/shift.slot/
#
# Slotを左上に
#
# @input
# @output
#   storage hd.sct:lib ShiftSlot
# @within function hd.sct:***

## 左にずらす
	execute unless data storage hd.sct:lib ShiftSlot[{Slot:1b}] unless data storage hd.sct:lib ShiftSlot[{Slot:2b}] unless data storage hd.sct:lib ShiftSlot[{Slot:10b}] unless data storage hd.sct:lib ShiftSlot[{Slot:11b}] unless data storage hd.sct:lib ShiftSlot[{Slot:19b}] unless data storage hd.sct:lib ShiftSlot[{Slot:20b}] run function hd.sct:lib/shift.slot/side.2
	execute unless data storage hd.sct:lib ShiftSlot[{Slot:1b}] unless data storage hd.sct:lib ShiftSlot[{Slot:10b}] unless data storage hd.sct:lib ShiftSlot[{Slot:19b}] run function hd.sct:lib/shift.slot/side.1
## 上にずらす
	execute unless data storage hd.sct:lib ShiftSlot[{Slot:1b}] unless data storage hd.sct:lib ShiftSlot[{Slot:2b}] unless data storage hd.sct:lib ShiftSlot[{Slot:3b}] unless data storage hd.sct:lib ShiftSlot[{Slot:10b}] unless data storage hd.sct:lib ShiftSlot[{Slot:11b}] unless data storage hd.sct:lib ShiftSlot[{Slot:12b}] run function hd.sct:lib/shift.slot/up.2
	execute unless data storage hd.sct:lib ShiftSlot[{Slot:1b}] unless data storage hd.sct:lib ShiftSlot[{Slot:2b}] unless data storage hd.sct:lib ShiftSlot[{Slot:3b}] run function hd.sct:lib/shift.slot/up.1
