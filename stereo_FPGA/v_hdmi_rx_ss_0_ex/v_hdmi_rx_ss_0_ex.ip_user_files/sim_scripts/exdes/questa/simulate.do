onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib exdes_opt

do {wave.do}

view wave
view structure
view signals

do {exdes.udo}

run -all

quit -force
