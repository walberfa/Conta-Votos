// Contador de Votos

module conta_votos(V,R);
  input logic [2:0] V;
  output logic [3:0] R;
  
  logic A,B,C;
  
always_comb
begin
  
  assign A = V[2];
  assign B = V[1];
  assign C = V[0];

  R[0] = ~(A|B|C);
  R[1] = (A&~B&~C) | (~A&(B^C));
  R[2] = (~A&B&C) | (A&(B^C));
  R[3] = A&B&C;
  
end

endmodule
