onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rythmcontroller/bpm
add wave -noupdate /rythmcontroller/sample1_pattern
add wave -noupdate /rythmcontroller/sample2_pattern
add wave -noupdate /rythmcontroller/sample3_pattern
add wave -noupdate /rythmcontroller/sample4_pattern
add wave -noupdate /rythmcontroller/clock_50
add wave -noupdate /rythmcontroller/sample1_en
add wave -noupdate /rythmcontroller/sample2_en
add wave -noupdate /rythmcontroller/sample3_en
add wave -noupdate /rythmcontroller/sample4_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 242
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ns} {862 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 15 0 /rythmcontroller/BPM 
wave create -pattern none -portmode in -language vhdl -range 15 0 /rythmcontroller/sample1_pattern 
wave create -pattern none -portmode in -language vhdl -range 15 0 /rythmcontroller/sample2_pattern 
wave create -pattern none -portmode in -language vhdl -range 15 0 /rythmcontroller/sample3_pattern 
wave create -pattern none -portmode in -language vhdl -range 15 0 /rythmcontroller/sample4_pattern 
wave create -pattern none -portmode in -language vhdl /rythmcontroller/CLOCK_50 
wave create -pattern none -portmode out -language vhdl /rythmcontroller/sample1_en 
wave create -pattern none -portmode out -language vhdl /rythmcontroller/sample2_en 
wave create -pattern none -portmode out -language vhdl /rythmcontroller/sample3_en 
wave create -pattern none -portmode out -language vhdl /rythmcontroller/sample4_en 
wave modify -driver freeze -pattern constant -value 0000000000111100 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/bpm 
wave modify -driver freeze -pattern constant -value 1000100010001000 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/sample1_pattern 
wave modify -driver freeze -pattern constant -value 0100010001000100 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/sample2_pattern 
wave modify -driver freeze -pattern constant -value 0100010001000010 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/sample3_pattern 
wave modify -driver freeze -pattern constant -value 0010001000100010 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/sample3_pattern 
wave modify -driver freeze -pattern constant -value 0001000100010001 -range 15 0 -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/sample4_pattern 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 10ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/rythmcontroller/clock_50 
WaveCollapseAll -1
wave clipboard restore
