module segment7_tb;
    reg [3:0] bcd;
    wire [7:0] seg;
    integer i;
    segment7 uut (.bcd(bcd), 
        .seg(seg));
    initial begin
        for(i = 0;i < 16;i = i+1)
        begin
            bcd = i; 
            #10;
        end     
    end
initial begin
    $dumpfile("segment7.vcd");
    $dumpvars(0, segment7_1);
end
segment7 segment7_1(.bcd(bcd),
          .seg(seg));
endmodule
