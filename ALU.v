// Author: 0711282 邱頎霖

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
reg zero_o;

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
		result_o <= (src1_i < src2_i)?1'b1:1'b0;
	end
	else if(ctrl_i==4'b1110)begin //SRA
		result_o <= (src1_i >>> src2_i); // >>> for "signed"
	end
	else if(ctrl_i==4'b1011)begin //lui
		result_o <= (src1_i<<16);	
	end
	else if(ctrl_i==4'b0011)begin //beq
		result_o <= (src1_i - src2_i);	
	end
	else if(ctrl_i==4'b1001)begin //bne
		result_o <= (src1_i - src2_i);	
	end
	else begin
		result_o <=0;
	end

	if(ctrl_i==4'b1001)begin // bne:if not equal->result!=0->but zero should=0
		zero_o <= (result_o==0)?1'b0:1'b1;
	end
	else begin
		zero_o <= (result_o==0)?1'b1:1'b0;
	end
end

endmodule

































