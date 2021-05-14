onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mult_8_8_16_opt

do {wave.do}

view wave
view structure
view signals

do {mult_8_8_16.udo}

run -all

quit -force
