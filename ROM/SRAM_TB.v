//1
module SRAM_TB();

reg [3:0] Dir_TB;     
reg EN_TB;
reg clk_TB;        
reg [31:0]DatoE_TB; 
wire [31:0] DatoS_TB;  

//2
SRAM DUV(
.Dir(Dir_TB),
.EN(EN_TB),
.clk(clk_TB), 
.DatoE(DatoE_TB),
.DatoS(DatoS_TB)
);
//3
    // Inicialización del reloj con el nombre correcto
    initial begin
        clk_TB = 1'b0; // Corregido: clk_TB en lugar de clock_TB
    end

    // Generador de reloj (cambia cada 10 unidades de tiempo)
    always #10 clk_TB = ~clk_TB;
initial begin 
    //1
    EN_TB = 0;
    Dir_TB = 3'd0;
    #100;

    // 2
    EN_TB = 0;
    Dir_TB = 3'd1;
    #100;

    // 3
    EN_TB = 0;
    Dir_TB = 3'd2;
    #100;

    // 4
    EN_TB = 0;
    Dir_TB = 3'd3;
    #100;

    // 5    
    EN_TB = 0;
    Dir_TB = 3'd4;
    #100;

    //6
    EN_TB = 1;
    Dir_TB = 3'd5;
    DatoE_TB = 32'd7;
    #100;

    //7
    EN_TB = 1;
    Dir_TB = 3'd6;
    DatoE_TB = 32'd3;
    #100; 

    // 8
    EN_TB = 0;
    Dir_TB = 3'd5;
    #100;

    // 9   
    EN_TB = 0;
    Dir_TB = 3'd6;
    #100;



    $finish;
end

endmodule