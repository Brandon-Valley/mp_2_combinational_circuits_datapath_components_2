// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_8_v.do

////////////////////////////////
//  Behavior Model
////////////////////////////////
module deMUX_1_8_v__behavior
  (
  input  i_a,
  input  [7:0] i_sel_code, 
  output [7:0] o_code);
  
  assign o_code[0] = (i_a & i_sel_code[0]) ? 1 : 0;
  assign o_code[1] = (i_a & i_sel_code[1]) ? 1 : 0;
  assign o_code[2] = (i_a & i_sel_code[2]) ? 1 : 0;
  assign o_code[3] = (i_a & i_sel_code[3]) ? 1 : 0;
  assign o_code[4] = (i_a & i_sel_code[4]) ? 1 : 0;
  assign o_code[5] = (i_a & i_sel_code[5]) ? 1 : 0;
  assign o_code[6] = (i_a & i_sel_code[6]) ? 1 : 0;
  assign o_code[7] = (i_a & i_sel_code[7]) ? 1 : 0;
  
endmodule



////////////////////////////////
//  Component Model - Using 4:1 deMUX's
////////////////////////////////
module deMUX_1_8_v__cmpnt
  (
  input  i_a,
  input  [7:0] i_sel_code, 
  output [7:0] o_code);
  
  
  deMUX_1_4_v demux1 (i_a, i_sel_code[3:0], o_code[3:0]);
  deMUX_1_4_v demux2 (i_a, i_sel_code[7:4], o_code[7:4]);
  
endmodule





























