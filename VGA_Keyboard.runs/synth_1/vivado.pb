
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
?The '%s' target of the following IPs are stale, please generate the output products using the generate_target or synth_ip command before running synth_design.
%s160*	vivadotcl2
	Synthesis2default:default2?
?c:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
2default:defaultZ4-393h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
324882default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1036.430 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2~
hC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/top.v2default:default2
232default:default8@Z8-6157h px? 
d
%s
*synth2L
8	Parameter BACKGROUND_COLOR bound to: 12'b111111111111 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter FOREGROUND_COLOR bound to: 12'b000000000000 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
keyboard_interface2default:default2
 2default:default2?
wC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/keyboard_interface.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ps2_recv2default:default2
 2default:default2?
mC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/ps2_recv.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2?
nC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/debouncer.v2default:default2
232default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter COUNT_MAX bound to: 19 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
12default:default2
12default:default2?
nC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/debouncer.v2default:default2
232default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/ps2_recv.v2default:default2
552default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ps2_recv2default:default2
 2default:default2
22default:default2
12default:default2?
mC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/ps2_recv.v2default:default2
232default:default8@Z8-6155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
keycodev2default:default2?
wC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/keyboard_interface.v2default:default2
592default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2,
seven_segment_controller2default:default2
 2default:default2?
}C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/seven_segment_controller.v2default:default2
212default:default8@Z8-6157h px? 
R
%s
*synth2:
&	Parameter NULL bound to: 7'b1111111 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter ZERO bound to: 7'b0000001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter ONE bound to: 7'b1001111 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter TWO bound to: 7'b0010010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter THREE bound to: 7'b0000110 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter FOUR bound to: 7'b1001100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter FIVE bound to: 7'b0100100 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter SIX bound to: 7'b0100000 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter SEVEN bound to: 7'b0001111 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter EIGHT bound to: 7'b0000000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter NINE bound to: 7'b0000100 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter A bound to: 7'b0001000 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter B bound to: 7'b1100000 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter C bound to: 7'b1000110 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter D bound to: 7'b0100001 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter E bound to: 7'b0110000 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter F bound to: 7'b0111000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter null_flag bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
}C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/seven_segment_controller.v2default:default2
752default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
}C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/seven_segment_controller.v2default:default2
1052default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
seven_segment_controller2default:default2
 2default:default2
32default:default2
12default:default2?
}C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/seven_segment_controller.v2default:default2
212default:default8@Z8-6155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	digit_reg2default:default2?
wC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/keyboard_interface.v2default:default2
1282default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
keyboard_interface2default:default2
 2default:default2
42default:default2
12default:default2?
wC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/keyboard_interface.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
digit_2_addr2default:default2
 2default:default2?
qC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/digit_2_addr.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
digit_2_addr2default:default2
 2default:default2
52default:default2
12default:default2?
qC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/digit_2_addr.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
digit2default:default2
42default:default2 
digit_2_addr2default:default2~
hC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/top.v2default:default2
1002default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2"
vga_controller2default:default2
 2default:default2?
sC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/vga_controller.v2default:default2
32default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter HD bound to: 640 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HF bound to: 48 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HB bound to: 16 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HR bound to: 96 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter HMAX bound to: 799 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter VD bound to: 480 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VF bound to: 10 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VB bound to: 33 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter VR bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter VMAX bound to: 524 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
vga_controller2default:default2
 2default:default2
62default:default2
12default:default2?
sC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/vga_controller.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
blk_mem_gen_02default:default2
 2default:default2?
?C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.runs/synth_1/.Xil/Vivado-13636-Chungus/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
blk_mem_gen_02default:default2
 2default:default2
72default:default2
12default:default2?
?C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.runs/synth_1/.Xil/Vivado-13636-Chungus/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
82default:default2
12default:default2~
hC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/top.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1078.258 ; gain = 41.828
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1078.258 ; gain = 41.828
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1078.258 ; gain = 41.828
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1078.2582default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.runs/synth_1/.Xil/Vivado-13636-Chungus/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
char_map	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.runs/synth_1/.Xil/Vivado-13636-Chungus/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
char_map	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2
772default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2
782default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
dp2default:default2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2
972default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
dp2default:default2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2
982default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
lC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/constrs_1/new/const.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1191.4492default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1191.4492default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2
	anode_reg2default:default2?
}C:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.srcs/sources_1/new/seven_segment_controller.v2default:default2
1062default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  13 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1191.449 ; gain = 155.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1195.277 ; gain = 158.848
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |blk_mem_gen_0 |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
I
%s*synth21
|1     |blk_mem_gen |     1|
2default:defaulth px? 
I
%s*synth21
|2     |BUFG        |     2|
2default:defaulth px? 
I
%s*synth21
|3     |CARRY4      |    10|
2default:defaulth px? 
I
%s*synth21
|4     |LUT1        |     8|
2default:defaulth px? 
I
%s*synth21
|5     |LUT2        |    13|
2default:defaulth px? 
I
%s*synth21
|6     |LUT3        |     8|
2default:defaulth px? 
I
%s*synth21
|7     |LUT4        |    23|
2default:defaulth px? 
I
%s*synth21
|8     |LUT5        |    21|
2default:defaulth px? 
I
%s*synth21
|9     |LUT6        |    48|
2default:defaulth px? 
I
%s*synth21
|10    |FDCE        |    44|
2default:defaulth px? 
I
%s*synth21
|11    |FDRE        |   106|
2default:defaulth px? 
I
%s*synth21
|12    |FDSE        |     4|
2default:defaulth px? 
I
%s*synth21
|13    |IBUF        |     4|
2default:defaulth px? 
I
%s*synth21
|14    |OBUF        |    40|
2default:defaulth px? 
I
%s*synth21
|15    |OBUFT       |     1|
2default:defaulth px? 
I
%s*synth21
+------+------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:32 . Memory (MB): peak = 1209.594 ; gain = 59.973
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1209.594 ; gain = 173.164
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1217.4062default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1217.4062default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:412default:default2
00:00:432default:default2
1217.4062default:default2
180.9772default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
dC:/Users/Brenden Morton/Desktop/TopDesk/UCF/Grad/FPGA/VGA_Keyboard/VGA_Keyboard.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Oct 30 14:02:42 20222default:defaultZ17-206h px? 


End Record