onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mult_fNew_opt

do {wave.do}

view wave
view structure
view signals

do {mult_fNew.udo}

run -all

quit -force
