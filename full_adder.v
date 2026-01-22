`timescale 1ns / 1ps

module full_adder(
    input A,B,Cin,
    output sum_1, carry1
    );
    
    wire s1,c1,c2;
    
    half_adder HA1(A,B,s1,c1);
    half_adder HA2(s1,Cin,sum_1,c2);
    
    assign carry1 = c1 | c2;
    
endmodule
