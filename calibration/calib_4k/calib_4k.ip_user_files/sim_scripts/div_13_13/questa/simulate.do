onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib div_13_13_opt

do {wave.do}

view wave
view structure
view signals

do {div_13_13.udo}

run -all

quit -force
