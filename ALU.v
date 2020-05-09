// Author:

module ALU(
    src1_i,
    src2_i,
    ctrl_i,
    result_o,
    zero_o
    );

//I/O ports
input  [32-1:0]  src1_i;
input  [32-1:0]	 src2_i;
input  [4-1:0]   ctrl_i;

output [32-1:0]	 result_o;
output           zero_o;

//Internal signals
reg    [32-1:0]  result_o;
wire             zero_o;

always @(*)begin
	if(ctrl_i==4'b0010)begin //ADD
		result_o <= (src1_i + src2_i);
	end
	else if(ctrl_i==4'b0110)begin //SUB
		result_o <= (src1_i - src2_i);
	end
	else if(ctrl_i==4'b0000)begin //AND
		result_o <= (src1_i & src2_i);
	end
	else if(ctrl_i==4'b0001)begin //OR
		result_o <= (src1_i | src2_i);	
	end
	else if(ctrl_i==4'b0111)begin //SLT
		result_o <= (src1_i < src2_i;)
	end
	else if(ctrl_i==4'b1110)begin //SRA
		result_o <= (src1_i >>> src2_i);
	end
end

endmodule

































