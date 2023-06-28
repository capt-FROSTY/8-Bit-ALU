module Bit8_ALU(
    input wire [7:0] a,
    input wire [7:0] b,
    input [2:0] opcode,
    input clk,
    output [15:0] outALU,
    output cout
    );
    reg [15:0] outALU;
    reg cout;
    begin
     
    always@(posedge clk)
    // ADDITION //
    if(opcode == 3'b000)
    begin
    {outALU,cout} = a + b;
    end
    
    // SUBTRACTION //
    else if(opcode == 3'b001)
    begin
    outALU = a - b;
    end
    
    // MULTIPLICATIOM //
    else if(opcode == 3'b010)
    begin
    outALU = a * b;
    end
    
    // LEFT SHIFT //
    else if(opcode == 3'b011)
    begin
    outALU = a << 1;
    end
    
    // RIGHT SHIFT //
    else if(opcode == 3'b100)
    begin
    outALU = a >> 1;
    end
    
    // LOGIC AND //
    else if(opcode == 3'b101)
    begin
    outALU = a & b;
    end
    
    // LOGIC OR //
    else if(opcode == 3'b110)
    begin
    outALU = a | b;
    end
    
    // LOGIC XOR //
    else if(opcode == 3'b111)
    begin
    outALU = a ^ b; 
    end
    
    // INVALID INPUT //
    else 
    begin
    outALU <= 16'hxxxx;
    cout <= 1'b0;
    end
    
    end
endmodule
