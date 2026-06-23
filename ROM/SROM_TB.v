module SROM_TB();

    reg [2:0] Dir_TB;  
    reg clk_TB;        
    wire [31:0] DatoS_TB;  

    // 2.
    SROM DUV(
        .Dir(Dir_TB),
        .clk(clk_TB),   // Corregido: . en vez de - y se agregó la coma
        .DatoS(DatoS_TB)
    );

    // Inicialización del reloj con el nombre correcto
    initial begin
        clk_TB = 1'b0; // Corregido: clk_TB en lugar de clock_TB
    end

    // Generador de reloj (cambia cada 100 unidades de tiempo)
    always #100 clk_TB = ~clk_TB;

    // 3. Estímulos con tiempos de espera
    initial begin 
        // Posición 0
        Dir_TB = 3'd0;
        #200; // Espera a que pase un ciclo completo de reloj (flanco de subida)

        // Posición 1
        Dir_TB = 3'd1;
        #200;

        // Posición 2
        Dir_TB = 3'd2;
        #200;

        // Posición 3
        Dir_TB = 3'd3;
        #200;

        // Posición 4
        Dir_TB = 3'd4;
        #200;
        
        $finish; // Ahora sí terminará después de haber probado todo
    end

endmodule