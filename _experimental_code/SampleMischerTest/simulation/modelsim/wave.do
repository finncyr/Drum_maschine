onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /samplemixer/clock_50
add wave -noupdate /samplemixer/sample1_en
add wave -noupdate /samplemixer/sample2_en
add wave -noupdate /samplemixer/sample3_en
add wave -noupdate /samplemixer/sample4_en
add wave -noupdate /samplemixer/synth1_out
add wave -noupdate /samplemixer/synth2_out
add wave -noupdate /samplemixer/synth3_out
add wave -noupdate /samplemixer/synth4_out
add wave -noupdate /samplemixer/aud_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {300 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 244
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
WaveRestoreZoom {300 ns} {334 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /samplemixer/CLOCK_50 
wave create -pattern none -portmode in -language vhdl /samplemixer/sample1_en 
wave create -pattern none -portmode in -language vhdl /samplemixer/sample2_en 
wave create -pattern none -portmode in -language vhdl /samplemixer/sample3_en 
wave create -pattern none -portmode in -language vhdl /samplemixer/sample4_en 
wave create -pattern none -portmode in -language vhdl -range 23 0 /samplemixer/synth1_out 
wave create -pattern none -portmode in -language vhdl -range 23 0 /samplemixer/synth2_out 
wave create -pattern none -portmode in -language vhdl -range 23 0 /samplemixer/synth3_out 
wave create -pattern none -portmode in -language vhdl -range 23 0 /samplemixer/synth4_out 
wave create -pattern none -portmode out -language vhdl -range 23 0 /samplemixer/aud_out 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample1_en 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 25ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample2_en 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 1ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample1_en 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 2ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample2_en 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 4ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample3_en 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 8ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/sample4_en 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 1ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/samplemixer/clock_50 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 1ns -sequence { 1 0  } -repeat forever -starttime 0ns -endtime 1000ns NewSig:/samplemixer/clock_50 
wave modify -driver freeze -pattern repeater -initialvalue 100000000000000000000000 -period 1ns -sequence { 100000000000000000000000 000000000000000000000000  } -repeat forever -range 23 0 -starttime 0ns -endtime 1000ns NewSig:/samplemixer/synth1_out 
wave modify -driver freeze -pattern repeater -initialvalue 100000000000000000000000 -period 2ns -sequence { 100000000000000000000000 000000000000000000000000  } -repeat forever -range 23 0 -starttime 0ns -endtime 1000ns NewSig:/samplemixer/synth2_out 
wave modify -driver freeze -pattern repeater -initialvalue 100000000000000000000000 -period 4ns -sequence { 100000000000000000000000 000000000000000000000000  } -repeat forever -range 23 0 -starttime 0ns -endtime 1000ns NewSig:/samplemixer/synth3_out 
wave modify -driver freeze -pattern repeater -initialvalue 100000000000000000000000 -period 8ns -sequence { 100000000000000000000000 000000000000000000000000  } -repeat forever -range 23 0 -starttime 0ns -endtime 1000ns NewSig:/samplemixer/synth4_out 
WaveCollapseAll -1
wave clipboard restore
