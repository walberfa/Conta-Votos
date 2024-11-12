module conta_votos_tb;
  
  logic [2:0] V;
  logic [3:0] R;
  
  conta_votos conta_votos_inst(.V(V), .R(R));
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars;
      
      V = 3'b000;
      #5;
      
      V = 3'b001;
      #5;
      
      V = 3'b010;
      #5;
      
      V = 3'b011;
      #5;
      
      V = 3'b100;
      #5;
      
      V = 3'b101;
      #5;
      
      V = 3'b110;
      #5;
      
      V = 3'b111;
      #5;
      
    end
  
  initial
    begin
      $display("     		Time 		Entrada 	Saida");
      $monitor($time,"    %b     %b", V, R);
    end 
  
endmodule
