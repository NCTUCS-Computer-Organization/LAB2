// Author:0711282

module Sign_Extend(
    data_i,
    data_o
    );

//I/O ports
input   [16-1:0] data_i;
output  [32-1:0] data_o;

//Internal Signals
reg     [32-1:0] data_o;

//Sign extended

data_o[31]=data_o[15];
data_o[30]=data_o[15];
data_o[29]=data_o[15];
data_o[28]=data_o[15];
data_o[27]=data_o[15];
data_o[26]=data_o[15];
data_o[25]=data_o[15];
data_o[24]=data_o[15];
data_o[23]=data_o[15];
data_o[22]=data_o[15];
data_o[21]=data_o[15];
data_o[20]=data_o[15];
data_o[19]=data_o[15];
data_o[18]=data_o[15];
data_o[17]=data_o[15];
data_o[16]=data_o[15];

endmodule
