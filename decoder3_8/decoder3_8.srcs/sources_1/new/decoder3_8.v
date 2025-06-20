module decoder3_8(
    A0,
    A1,
    A2,
    Y0,
    Y1,
    Y2,
    Y3,
    Y4,
    Y5,
    Y6,
    Y7
);
   input A0;
   input A1;
   input A2;
   output reg Y0;
   output reg Y1;
   output reg Y2;
   output reg Y3;
   output reg Y4;
   output reg Y5;
   output reg Y6;
   output reg Y7;
   
always@(*)//过程赋值语句声明，*关注所有信号,在always块赋值的信号都要定义为reg型
    case({A2,A1,A0})//{*}位拼接，将三个单bit信号拼接成位宽3bit的信号
        3'b000:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0000_0001;
        3'b001:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0000_0010;
        3'b010:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0000_0100;
        3'b011:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0000_1000;
        3'd4:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0001_0000;
        3'd5:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0010_0000;
        3'd6:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0100_0000;
        3'd7:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b1000_0000;
        default:{Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0}=8'b0000_0000;
    endcase

endmodule
