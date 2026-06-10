# Условное графическое обозначение логических вентилей

<p align="center">
  <img src="media/graphical_notation.png" width="500">
</p>  

# XOR logic  
### For 2 inputs: comparison
XOR отвечает за сравнение неравенства  
0 ^ 0 | 0  
0 ^ 1 | 1 (взаимное исключение)  
1 ^ 0 | 1 (взаимное исключение)  
1 ^ 1 | 0  
XNOR за сравнение равенства.  
0 ^ 0 | 1  
0 ^ 1 | 0  
1 ^ 0 | 0  
1 ^ 1 | 1  
синтаксис XNOR: `~^` или `==`  
### For N-inputs: checks parity  (mod 2)
XOR outputs 1 if the number of 1s in the inputs is odd.

# Полусумматор (Half Adder)

<p align="center">
  <img src="media/half_adder.jpg" width="300">
</p>

A, B -1-bit  inputs 
sum, carry - 1-bit outputs
Getting sum with carry:  
0 + 0  =  **0**, carry **0**  
0 + 1  =  **1**, carry **0**  
1 + 0  =  **1**, carry **0**  
1 + 1  =  **1**, carry **1**  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;XOR&nbsp;&nbsp;&nbsp;&nbsp;AND
