`timescale 1ns/1ns
module decoder3_8_tb();//与文件名一致
//例化，复制.v文件module后面部分,贴标签decoder3_8_inst
//A0,1,2都在initial过程赋值语句赋值，要定义成reg型
    reg A0;
    reg A1;
    reg A2;
    //列操作：Ctrl+鼠标选中
   wire Y0;
   wire Y1;
   wire Y2;
   wire Y3;
   wire Y4;
   wire Y5;
   wire Y6;
   wire Y7;
decoder3_8 decoder3_8_inst(

//打.加括号
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin//输入激励信号
    A2=0;A1=0;A0=0;
    #20;
    A2=0;A1=0;A0=1;
    #20;
    A2=0;A1=1;A0=0;
    #20;
    A2=0;A1=1;A0=1;
    #20;
    A2=1;A1=0;A0=0;
    #20;
    A2=1;A1=0;A0=1;
    #20;
    A2=1;A1=1;A0=0;
    #20;
    A2=1;A1=1;A0=1;
    #20;
    $stop;
end



endmodule
