set_property -dict { PACKAGE_PIN AY37 IOSTANDARD DIFF_POD12_DCI } [get_ports i_clk_p];
set_property -dict { PACKAGE_PIN AY38 IOSTANDARD DIFF_POD12_DCI } [get_ports i_clk_n];
create_clock -add -name sys_clk_pin -period 3.333 [get_nets i_clk];

# no LED available
set_property -dict { PACKAGE_PIN BB20 IOSTANDARD LVCMOS12 } [get_ports o_uart_tx]

set_property RAM_STYLE block [get_cells corescorecore/core_*/serving/ram/mem_reg]
