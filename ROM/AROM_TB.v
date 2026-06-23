//1
module AROM_TB();

reg [2:0] Dir_TB;      
wire [31:0] DatoS_TB;  

//2
AROM DUV(
.Dir(Dir_TB),
.DatoS(DatoS_TB)
);
//3
initial begin 
    Dir_TB = 3'd0;
    #100;

    // 2
    Dir_TB = 3'd1;
    #100;

    // 3
    Dir_TB = 3'd2;
    #100;

    // 4
    Dir_TB = 3'd3;
    #100;

    // 5
    Dir_TB = 3'd4;
    #100;
    $finish;
end

endmodule