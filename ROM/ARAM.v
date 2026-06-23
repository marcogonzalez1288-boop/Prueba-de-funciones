//1
module ARAM(
    input [3:0] Dir,
    input EN,
    input [31:0] DatoE,
    output reg [31:0] DatoS
);
//2
//crear la memoria bidimencional
reg [31:0] MeM [9:0];

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


    // Lectura
    always @(*) begin
        if (EN)
            begin
                MeM[Dir] = DatoE;
            end 
        else 
            begin
                DatoS = MeM[Dir];
            end
    end

endmodule