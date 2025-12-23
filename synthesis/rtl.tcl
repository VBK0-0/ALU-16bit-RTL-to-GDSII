set_attribute library osu05_stdcells.lib
set interconnect_mode wireload
read_hdl ALU_16bit.v
elaborate

define_clock -period 10000 -name clk [clock_ports]
external_delay -inputt 1000 -clock clk [find / -ports_in/*]
external_delay -output 1000 -clock clk [find / -port ports_out/*]

check_design -unresolved
synthesize -to_mapped

report area > ALU_16bit_area.rep
report gates > ALU_16bit_gates.rep
report timing > ALU_16bit_timing.rep
report power > ALU_16bit_power.rep

write_hdl -generic > ALU_16bit_generic.v
write_hdl > ALU_16bit_RTL.v
write_sdc > ALU_16bit_RTL.sdc
write_sdf -edges check_edge -celltiming nochecks > ALU_16bit_RTL.sdf
exit
