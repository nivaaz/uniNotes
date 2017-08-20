#Embedded Systems 
##Lecture 1

###Microprocessors 
- Are composed of three main units : Reg, ALU, CU

#### RISC: Reduced Instruction Set Computer :
- Single cycle execution , fixed instruction set, instructions are siple to decode , load-store arichitecture , larg reg bank, poor code density, shorter dev time
#### CISC: Complex Instruction Set Computer 
Mutliple cyles to execute a single instruction ,
Variable length instructions , 
Use large microcode ROMs to decode instructions, 
Data processing is allowed in memory, 
Small reg bank, 
Less code, hard to design but easiest for progammer
#### Memory Hierachy 
- Memory is oraginised into 8 bit elements. 

####Memory 
- LOAD - STORE:
- Direct manipulation of data is memory is not allowed.
 - Need to load into current reg and then store back into memory 

 ##### BITS & BYTES
 - Byte = 8 bits
 - Half word is 16 bits 
 - Word is 32 bits or 4 bytes 
 ###PROCESSOR MODES
 - Supervisor : Entered when a software interrupt is handled
 - fIQ : Enetered when a high priority interrupt is handled 
 - IRQ: Entered whena low priority is raised 
 - Abort : used to handle memeory access 
 - Undef : used when using undefined instructions 
 - System : Privleged mode using the same reg as user mode 
 - User : mod  under which most app or OS run 

 ###Registers 
 - 37 Registers 
 - Each reg is 32 bits wide 
 -30 general prupose registers 
 - 6 status registers 
 - 1 PC= R15
 - Changing from supervisor to fiQ wold result in the lrgest change in reg 
- PC and CPSR are avaiable in all modes

####SPECIAL REG 
- PC holds a 32 bit address of the instruction being fetched and is incrementd by 4 each cycle
- SP R13, hold address at the top of memory 
- LR R14, holds the return address during the branching and subroutine calls 
- CPSR holad useful info about current status 

### Pipeline Architecture 
- Fetch, Decode & Execute 
- Get from memory 
- Decode instruction 
- Execute data path 

###CPSr & SPSR
- N, Z C, V 
###Vector table 

###COMMANDS 
####DATA PROCESSING 
- MOV, ADD SUB
####DATAT TRANSFER 
- LDR, STR 
#### CONTROL FLOW 
- B, BL 
####Special 
- MSR, MRS

- Instructions are to be aligned to 4 byte boundaries 
- Has conditional execution 
- each instruction has :
- Opcode: specifies the operation 
- Operand - immediate, reg, or shifted reg 


### Debuggers 
- Can be used for access to internal registers
- view mmeory contents
- breakpoints & troubleshooting 

###Code exaples 
####Directives 
 - Area : new assembly section created 
 - Code
 - Entry: entry point of a file 
 - Readonly 
 - End : end of source file

 ####All code must look like
 - label instruction ;comment 

###Assembly examples
- Appending letter S to data processing instruction forces the condition code flags (N,Z,C,V) to be saved into CPSR.
