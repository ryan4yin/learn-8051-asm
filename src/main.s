;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
; ......省略若干 sdcc 的模板汇编内容
;--------------------------------------------------------
;	 function main
;--------------------------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;--------------------------------------------------------
;	 我们的自定义程序内容由此开始，前面的都是 sdcc 模板内容
;--------------------------------------------------------
    ; 单片机默认会给堆栈分配一个起始地址为 07H，而内存 RAM 中的 07H 这个地方是第 0 组工作寄存器 R7 的空间
    ; 如果你既用了工作寄存器又向堆栈中存储数据，这样在一个地方存放不同的数据，就会导致一些数据被覆盖，从而导致程序莫名其妙的不正常
    ; 在手写汇编时为了避免错误，通常在初始化阶段使用如下命令手动将堆栈指针移动到 0x60
    ; 注意 #0x60 表示这个字面量数字，而如果去掉 # 则表示 RAM 对应地址存放的值
    mov sp, #0x60

    mov 0x40, #0xff  ; 延时函数的参数
    mov _P0, #0b11111111   ; P0 全置为高电平，即 P0 上的灯全灭
    mov r2, #0x00  ; 使用寄存器 r2 作为临时变量存储处。这里不能用 a 了，因为后面做算术操作必须用到 a
_main_loop:
	mov a, r2
    mov dptr, #_tab     ; 给 dptr 数据指针赋 #_tab 的地址
    movc a, @a+dptr     ; A 和 DPTR 中的数加一起作为地址，把此地址中的数据（1 byte）取出来再存到 A 中
	lcall   _delay      ; 调用延时程序

    inc r2                      ; r2 变量自增 1，这样下次循环将显示下一个地址中存储的数据
    cjne r2, #73, _main_loop    ; 如果 r2 不等于一个整数，就继续循环。这个整数是你 _tab 数据区的数据量，写大了会导致指针越界，读到的就不知道是啥数据了
    mov r2, #0x00               ; 重置寄存器 r2，重新从头开始显示

	sjmp    _main_loop  ; 无限循环
_led_p0:
    mov _P0, a          ; 将 a 中的数据送 P0 显示，这样就实现了使用 #_tab 中存储的数据来“动态”显示的效果
_led_p2:
    mov _P2, a          ; 将 a 中的数据送 P0 显示，这样就实现了使用 #_tab 中存储的数据来“动态”显示的效果
;------------------------------------------------------------
; 常量数据区，当前数据量 12
;------------------------------------------------------------
_tab:
	.db #0b11111110
	.db #0b11111101
	.db #0b11111011
	.db #0b11110111
	.db #0b11101111
	.db #0b11011111
	.db #0b10111111
	.db #0b01111111
	.db #0b10111111
	.db #0b11011111
	.db #0b11101111
	.db #0b11110111
	.db #0b11111011
	.db #0b11111101
	.db #0b11111110
	.db #0b00000000
	.db #0b00000000
	.db #0b11111111
	.db #0b11111111
	.db #0b00000000
	.db #0b00000000
	.db #0b11111111
	.db #0b11111111
	.db #0b00000000
	.db #0b00000000
	.db #0b11110000
	.db #0b11110000
	.db #0b00000000
	.db #0b00000000
	.db #0b11110000
	.db #0b11110000
	.db #0b00000000
	.db #0b00000000
	.db #0b00001111
	.db #0b00001111
	.db #0b00000000
	.db #0b00000000
	.db #0b00001111
	.db #0b00001111
	.db #0b00000000
	.db #0b00000000
	.db #0b11110000
	.db #0b11110000
	.db #0b00000000
	.db #0b00000000
	.db #0b11110000
	.db #0b11110000
	.db #0b00000000
	.db #0b00000000
	.db #0b00001111
	.db #0b00001111
	.db #0b00000000
	.db #0b00000000
	.db #0b00001111
	.db #0b00001111
	.db #0b00000000
	.db #0b00000000
	.db #0b01010101
	.db #0b01010101
	.db #0b00000000
	.db #0b00000000
	.db #0b01010101
	.db #0b01010101
	.db #0b00000000
	.db #0b00000000
	.db #0b10101010
	.db #0b10101010
	.db #0b00000000
	.db #0b00000000
	.db #0b10101010
	.db #0b10101010
	.db #0b00000000
	.db #0b00000000
;------------------------------------------------------------
; function 'delay'
; 此处延时的工作原理：让单片机重复执行非常多次 djnz 指令，实现延时效果
; 时长计算方法：
;  1. mov 指令耗时一个机器周期，但是它跑得比较少可以直接忽略
;  2. djnz 指令耗时两个机器周期，它主要的执行次数为 0xff * 0xff 次
;  3. 因为使用的是 12M 的晶振，经过 51 单片机内部 12 分频（即
脉冲变宽，频率为晶振频率的十二分之一）后为 1M，那么一个机器周期的时间是 1 微秒
; 这样就能得出每次延时时间略大于 2 * 0xff * 0xff 微秒，约为 0.13 秒
;------------------------------------------------------------
_delay:
	mov r0, 0x40       ; 从 RAM 0x40 位置取值，赋到 r0 上
	_d2:
		mov	r1, 0x40   ; 赋值为 #0xff 也就是 255
	_d1:
		djnz r1, _d1    ; R1 减 1 不等于 0 跳到 _d1 处
		djnz r0, _d2    ; R0 减 1 不等于 0 跳到 _d2 处
		jnc	_return

;------------------------------------------------------------
; _return 程序最终退出的地方
; 这其中的 .area 也是 sdcc 模板内容的一部分
;------------------------------------------------------------
_return:
	ret  ; 出栈之前保存的地址到程序指针 PC，从而跳转回原来的地方继续执行
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)