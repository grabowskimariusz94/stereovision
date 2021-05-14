onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mult_f_opt

do {wave.do}

view wave
view structure
view signals

do {mult_f.udo}

run -all

quit -force
