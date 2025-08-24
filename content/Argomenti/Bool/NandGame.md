## NandGame

Solutions for The Nand Game, a game that teaches the fundamentals of computing by building a computer from scratch. Each level is accompanied by images of the logic gates used to build the components.

## Table of Contents

- [Levels](#levels)
    
    - [Logic Gates](#logic-gates)
        
        - [NAND Gate](#nand-gate)
            
        - [Invert](#invert)
            
        - [AND Gate](#and-gate)
            
        - [OR Gate](#or-gate)
            
        - [XOR Gate](#xor-gate)
            
    - [Arithmetic](#arithmetic)
        
        - [Half Adder](#half-adder)
            
        - [Full Adder](#full-adder)
            
        - [Multi-bit Adder](#multi-bit-adder)
            
        - [Increment](#increment)
            
        - [Subtraction](#subtraction)
            
        - [Equal to Zero](#equal-to-zero)
            
        - [Less than Zero](#less-than-zero)
            
    - [Switching](#switching)
        
        - [Selector](#selector)
            
        - [Switch](#switch)
            
    - [Arithmetic Logic Unit](#arithmetic-logic-unit)
        
        - [Logic Unit](#logic-unit)
            
        - [Arithmetic Unit](#arithmetic-unit)
            
        - [ALU](#alu)
            
        - [Condition](#condition)
            
    - [Memory](#memory)
        
        - [Latch](#latch)
            
        - [Data Flip-Flop](#data-flip-flop)
            
        - [Register](#register)
            
        - [Counter](#counter)
            
        - [RAM](#ram)
            
    - [Processor](#processor)
        
        - [Combined Memory](#combined-memory)
            
        - [Instruction](#instruction)
            
        - [Control Unit](#control-unit)
            
        - [Computer](#computer)
            
        - [Input and Output](#input-and-output)
            
- [Author](#author)
    

## Levels

## Logic Gates

### NAND Gate

![[Media/logic_gates/nand.png]]  
2 components used. This is the simplest possible solution!

### Invert

![[Media/logic_gates/invert.png]]  
1 component used. 1 NAND gate in total. This is optimal!

### AND Gate

![[Media/logic_gates/and.png]]  
2 components used. 2 NAND gates in total. This is optimal!

### OR Gate

![[Media/logic_gates/or.png]]  
3 components used. 3 NAND gates in total. This is optimal!

### XOR Gate

![[Media/logic_gates/xor.png]]  
4 components used. 4 NAND gates in total. This is optimal!

## Arithmetic

### Half Adder

![[Media/arithmetic/half_adder.png]]  
5 components used. 5 NAND gates in total. This is optimal!

### Full Adder

![[Media/arithmetic/full_adder.png]]  
9 components used. 9 NAND gates in total. This is optimal!

### Multi-bit Adder

![[Media/arithmetic/multibit_adder.png]]  
2 components used. 18 NAND gates in total. This is optimal!

### Increment

![[Media/arithmetic/increment.png]]  
2 components used. (Not counting 0 which does not contain any logic.) 145 NAND gates in total. This is the simplest possible solution!

### Subtraction

![[Media/arithmetic/subtraction.png]]  
3 components used. (Not counting 0 which does not contain any logic.) 161 NAND gates in total. This is the simplest possible solution!

### Equal to Zero

![[Media/arithmetic/equal_to_zero.png]]  
4 components used. 10 NAND gates in total. This is optimal!

### Less than Zero

![[Media/arithmetic/less_than_zero.png]]  
0 components used. (Not counting splitter which does not contain any logic.) 0 NAND gates in total. This is the simplest possible solution!

## Switching

### Selector

![[Media/switching/selector.png]]  
4 components used. 4 NAND gates in total. This is optimal!

### Switch

![[Media/switching/switch.png]]  
4 components used. 4 NAND gates in total. This is optimal!

## Arithmetic Logic Unit

### Logic Unit

![[Media/alu/logic_unit.png]]  
7 components used. 352 NAND gates in total. This is the simplest possible solution!

### Arithmetic Unit

![[Media/alu/arithmetic_unit.png]]  
5 components used. (Not counting 0 which does not contain any logic.) 434 NAND gates in total. This is the simplest possible solution!

### ALU

![[Media/alu/alu.png]]  
6 components used. (Not counting 0 which does not contain any logic.) 1042 NAND gates in total. This is the simplest possible solution!

### Condition

![[Media/alu/condition.png]]  
8 components used. (Not counting is neg which does not contain any logic.) 56 NAND gates in total. This is optimal!

## Memory

### Latch

![[Media/memory/latch.png]]  
1 component used. 4 NAND gates in total. This is optimal!

### Data Flip-Flop

![[Media/memory/data_flipflop.png]]  
5 components used. 13 NAND gates in total. This uses the fewest possible components. (But it is possible to solve with a lower total of NAND gates.)

### Register

![[Media/memory/register.png]]  
2 components used. 26 NAND gates in total. This is the simplest possible solution!

### Counter

![[Media/memory/counter.png]]  
4 components used. (Not counting 0 which does not contain any logic.) 418 NAND gates in total. This is the simplest possible solution!

### RAM

![[Media/memory/ram.png]]  
4 components used. 484 NAND gates in total. This is the simplest possible solution!

## Processor

### Combined Memory

![[Media/processor/combined_memory.png]]  
3 components used. 416 NAND gates in total. And 123904 for each kilobyte of RAM. This is the simplest possible solution!

### Instruction

![[Media/processor/instruction.png]]  
3 components used. (Not counting splitter which does not contain any logic.) 1162 NAND gates in total.

### Control Unit

![[Media/processor/control_unit.png]]  
10 components used. (Not counting splitter and 0 which does not contain any logic.) 1297 NAND gates in total.

### Computer

![[Media/processor/computer.png]]  
4 components used. (Not counting clock which does not contain any logic.) 2131 NAND gates in total. And 123904 for each kilobyte of RAM. (ROM storage not counted) This is the simplest possible solution!

### Input and Output

![[Media/processor/input_output.png]]  
3 components used. (Not counting lamp and button and bundler and splitter which does not contain any logic.) 6 NAND gates in total.

## Author

👤 **Aras Güngöre**

- LinkedIn: [@arasgungore](https://www.linkedin.com/in/arasgungore)
    
- GitHub: [@arasgungore](https://github.com/arasgungore)