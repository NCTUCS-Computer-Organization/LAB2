# LAB2

## 此次LAB的圖
![](https://i.imgur.com/y4eaHCb.jpg)

## Files
- [ ] Adder.v
- [ ] ALU.v
- [ ] ALU_ctrl.v
- [ ] Decoder.v
- [x] instr_Memory.v
- [x] MUX_2to1.v
- [x] ProgramCounter.v
- [x] Reg_File.v
- [x] Shift_Left_Two_32.v
- [x] Sign_Extend.v
- [ ] Simple_Single_CPU.v
- [x] Test_bench.v


## OPcode & Control

AlU 控制:


| ALU control(4bit) | 功能 |
| ----------------- | ---- |
| 0000              | AND  |
| 0001              | OR   |
| 0010              | ADD  |
| 0110              | SUB  |
| 0111              | SLT  |
| 1100              | NOR  |
| 1110              | SR   |
| 1111              | SRV  |
| 1011                  |Lui      |
| 0011                  | beq     |
| 1001              | bne  |



| Type  | OPCODE     | ALUop  | REGdst | ALUSrc | Branch | RegWrite |
|:----- |:---------- |:------ | ------ | ------ |:------ |:-------- |
| R     | 000000(0)  | 000(0) | 1      | 0      | 0      | 1        |
| addi  | 001000(8)  | 001(1) | 1       | 1       | 0      | 1        |
| sltiu | 001011(11) | 010(2) | 0       | 0       | 0      | 1        |
| beq   | 000100(4)  | 010(2) | x       | 1       | 1      | 0        |
| lui   | 001111(15) | 011(3) | 0       | 1       | 0      | 1        |
| ori   | 001101(13) | 111(7) | 0       | 1       | 0      | 1        |
| bne   | 000101(5)  | 010(2) | x       | 1       | 1      | 0        |
