module PC_Module(clk,rst,PC,PC_Next,pc_write);
    input clk,rst;
    input [31:0]PC_Next;
    input pc_write;
    output [31:0]PC;
    reg [31:0]PC;

    always @(posedge clk)
    begin
        if(rst == 1'b0)
            PC <= {32{1'b0}};
        else if (pc_write)
            PC <= PC_Next;
        // else hold (stall)
    end
endmodule
