//1
module SROM(
    input [2:0] Dir,
    input clk,
    output reg [31:0] DatoS
);

//2
//crear la memoria bidimencional
reg [31:0] MeM [4:0];

//3
//inicializacion

initial 
    begin
        MeM[0] = 32'd 255;
        MeM[1] = 32'd 127;
        MeM[2] = 32'd 63;
        MeM[3] = 32'd 31;
        MeM[4] = 32'd 15;
    end

//lectura
always @(posedge clk)
 begin
        DatoS <= MeM[Dir]; 
    end

endmodule