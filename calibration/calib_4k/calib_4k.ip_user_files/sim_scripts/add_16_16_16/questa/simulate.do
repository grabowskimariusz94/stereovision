onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib add_16_16_16_opt

do {wave.do}

view wave
view structure
view signals

do {add_16_16_16.udo}

run -all

quit -force
