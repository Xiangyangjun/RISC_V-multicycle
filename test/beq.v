// asm file name: beq.o
module instr_rom(
    input  logic clk, rst_n,
    input  logic [13:0] i_addr,
    output logic [31:0] o_data
);
    localparam  INSTR_CNT = 12'd185;
    
    wire [0:INSTR_CNT-1] [31:0] instr_rom_cell = {
        32'h00200193,    //0x00000000
        32'h00000093,    //0x00000004
        32'h00000113,    //0x00000008
        32'h00208663,    //0x0000000c
        32'h2a301863,    //0x00000010
        32'h00301663,    //0x00000014
        32'hfe208ee3,    //0x00000018
        32'h2a301263,    //0x0000001c
        32'h00300193,    //0x00000020
        32'h00100093,    //0x00000024
        32'h00100113,    //0x00000028
        32'h00208663,    //0x0000002c
        32'h28301863,    //0x00000030
        32'h00301663,    //0x00000034
        32'hfe208ee3,    //0x00000038
        32'h28301263,    //0x0000003c
        32'h00400193,    //0x00000040
        32'hfff00093,    //0x00000044
        32'hfff00113,    //0x00000048
        32'h00208663,    //0x0000004c
        32'h26301863,    //0x00000050
        32'h00301663,    //0x00000054
        32'hfe208ee3,    //0x00000058
        32'h26301263,    //0x0000005c
        32'h00500193,    //0x00000060
        32'h00000093,    //0x00000064
        32'h00100113,    //0x00000068
        32'h00208463,    //0x0000006c
        32'h00301463,    //0x00000070
        32'h24301663,    //0x00000074
        32'hfe208ee3,    //0x00000078
        32'h00600193,    //0x0000007c
        32'h00100093,    //0x00000080
        32'h00000113,    //0x00000084
        32'h00208463,    //0x00000088
        32'h00301463,    //0x0000008c
        32'h22301863,    //0x00000090
        32'hfe208ee3,    //0x00000094
        32'h00700193,    //0x00000098
        32'hfff00093,    //0x0000009c
        32'h00100113,    //0x000000a0
        32'h00208463,    //0x000000a4
        32'h00301463,    //0x000000a8
        32'h20301a63,    //0x000000ac
        32'hfe208ee3,    //0x000000b0
        32'h00800193,    //0x000000b4
        32'h00100093,    //0x000000b8
        32'hfff00113,    //0x000000bc
        32'h00208463,    //0x000000c0
        32'h00301463,    //0x000000c4
        32'h1e301c63,    //0x000000c8
        32'hfe208ee3,    //0x000000cc
        32'h00900193,    //0x000000d0
        32'h00000213,    //0x000000d4
        32'h00000093,    //0x000000d8
        32'hfff00113,    //0x000000dc
        32'h1e208063,    //0x000000e0
        32'h00120213,    //0x000000e4
        32'h00200293,    //0x000000e8
        32'hfe5216e3,    //0x000000ec
        32'h00a00193,    //0x000000f0
        32'h00000213,    //0x000000f4
        32'h00000093,    //0x000000f8
        32'hfff00113,    //0x000000fc
        32'h00000013,    //0x00000100
        32'h1a208e63,    //0x00000104
        32'h00120213,    //0x00000108
        32'h00200293,    //0x0000010c
        32'hfe5214e3,    //0x00000110
        32'h00b00193,    //0x00000114
        32'h00000213,    //0x00000118
        32'h00000093,    //0x0000011c
        32'hfff00113,    //0x00000120
        32'h00000013,    //0x00000124
        32'h00000013,    //0x00000128
        32'h18208a63,    //0x0000012c
        32'h00120213,    //0x00000130
        32'h00200293,    //0x00000134
        32'hfe5212e3,    //0x00000138
        32'h00c00193,    //0x0000013c
        32'h00000213,    //0x00000140
        32'h00000093,    //0x00000144
        32'h00000013,    //0x00000148
        32'hfff00113,    //0x0000014c
        32'h16208863,    //0x00000150
        32'h00120213,    //0x00000154
        32'h00200293,    //0x00000158
        32'hfe5214e3,    //0x0000015c
        32'h00d00193,    //0x00000160
        32'h00000213,    //0x00000164
        32'h00000093,    //0x00000168
        32'h00000013,    //0x0000016c
        32'hfff00113,    //0x00000170
        32'h00000013,    //0x00000174
        32'h14208463,    //0x00000178
        32'h00120213,    //0x0000017c
        32'h00200293,    //0x00000180
        32'hfe5212e3,    //0x00000184
        32'h00e00193,    //0x00000188
        32'h00000213,    //0x0000018c
        32'h00000093,    //0x00000190
        32'h00000013,    //0x00000194
        32'h00000013,    //0x00000198
        32'hfff00113,    //0x0000019c
        32'h12208063,    //0x000001a0
        32'h00120213,    //0x000001a4
        32'h00200293,    //0x000001a8
        32'hfe5212e3,    //0x000001ac
        32'h00f00193,    //0x000001b0
        32'h00000213,    //0x000001b4
        32'h00000093,    //0x000001b8
        32'hfff00113,    //0x000001bc
        32'h10208063,    //0x000001c0
        32'h00120213,    //0x000001c4
        32'h00200293,    //0x000001c8
        32'hfe5216e3,    //0x000001cc
        32'h01000193,    //0x000001d0
        32'h00000213,    //0x000001d4
        32'h00000093,    //0x000001d8
        32'hfff00113,    //0x000001dc
        32'h00000013,    //0x000001e0
        32'h0c208e63,    //0x000001e4
        32'h00120213,    //0x000001e8
        32'h00200293,    //0x000001ec
        32'hfe5214e3,    //0x000001f0
        32'h01100193,    //0x000001f4
        32'h00000213,    //0x000001f8
        32'h00000093,    //0x000001fc
        32'hfff00113,    //0x00000200
        32'h00000013,    //0x00000204
        32'h00000013,    //0x00000208
        32'h0a208a63,    //0x0000020c
        32'h00120213,    //0x00000210
        32'h00200293,    //0x00000214
        32'hfe5212e3,    //0x00000218
        32'h01200193,    //0x0000021c
        32'h00000213,    //0x00000220
        32'h00000093,    //0x00000224
        32'h00000013,    //0x00000228
        32'hfff00113,    //0x0000022c
        32'h08208863,    //0x00000230
        32'h00120213,    //0x00000234
        32'h00200293,    //0x00000238
        32'hfe5214e3,    //0x0000023c
        32'h01300193,    //0x00000240
        32'h00000213,    //0x00000244
        32'h00000093,    //0x00000248
        32'h00000013,    //0x0000024c
        32'hfff00113,    //0x00000250
        32'h00000013,    //0x00000254
        32'h06208463,    //0x00000258
        32'h00120213,    //0x0000025c
        32'h00200293,    //0x00000260
        32'hfe5212e3,    //0x00000264
        32'h01400193,    //0x00000268
        32'h00000213,    //0x0000026c
        32'h00000093,    //0x00000270
        32'h00000013,    //0x00000274
        32'h00000013,    //0x00000278
        32'hfff00113,    //0x0000027c
        32'h04208063,    //0x00000280
        32'h00120213,    //0x00000284
        32'h00200293,    //0x00000288
        32'hfe5212e3,    //0x0000028c
        32'h00100093,    //0x00000290
        32'h00000a63,    //0x00000294
        32'h00108093,    //0x00000298
        32'h00108093,    //0x0000029c
        32'h00108093,    //0x000002a0
        32'h00108093,    //0x000002a4
        32'h00108093,    //0x000002a8
        32'h00108093,    //0x000002ac
        32'h00300e93,    //0x000002b0
        32'h01500193,    //0x000002b4
        32'h01d09463,    //0x000002b8
        32'h00301663,    //0x000002bc
        32'h00100793,    //0x000002c0
        32'h00320233,    //0x000002c4
        32'h00100193,    //0x000002c8
        32'h40f181b3,    //0x000002cc
        32'hc0001073,    //0x000002d0
        32'h00000000,    //0x000002d4
        32'h00000000,    //0x000002d8
        32'h00000000,    //0x000002dc
        32'h00000000    //0x000002e0
        
    };
    
    logic [11:0] instr_index;
    logic [31:0] data;
    
    assign instr_index = i_addr[13:2];
    assign data = (instr_index>=INSTR_CNT) ? 0 : instr_rom_cell[instr_index];
    
    always @ (posedge clk or negedge rst_n)
        if(~rst_n)
            o_data <= 0;
        else
            o_data <= data;

endmodule
