`timescale 1ns/1ns
module decoder3_8_tb();//���ļ���һ��
//����������.v�ļ�module���沿��,����ǩdecoder3_8_inst
//A0,1,2����initial���̸�ֵ��丳ֵ��Ҫ�����reg��
    reg A0;
    reg A1;
    reg A2;
    //�в�����Ctrl+���ѡ��
   wire Y0;
   wire Y1;
   wire Y2;
   wire Y3;
   wire Y4;
   wire Y5;
   wire Y6;
   wire Y7;
decoder3_8 decoder3_8_inst(

//��.������
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

initial begin//���뼤���ź�
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
