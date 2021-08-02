onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Stereovision_0_opt

do {wave.do}

view wave
view structure
view signals

do {Stereovision_0.udo}

run -all

quit -force
