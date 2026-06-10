![УГО](media/graphical_notation.png)

XOR отвечает за сравнение неравенства
0 ^ 0 | 0 <br>0 ^ 1 | 1 (взаимное исключение) <br>1 ^ 0 | 1 (взаимное исключение)<br>1 ^ 1 | 0<br>
XNOR за сравнение равенства. 
0 ^ 0 | 1<br>0 ^ 1 | 0<br>1 ^ 0 | 0<br>1 ^ 1 | 1<br>
синтаксис XNOR: `~^` или `==`

# Полусумматор (Half Adder)

![Полусумматор](media/half_adder.jpg)

A, B - inputs 1 bit number. 
sum, carry - output 1 bit number
Getting sum with a carry: 
0 + 0  =   **0**,carry **0** <br>0 + 1  =   **1**, carry **0** <br>1 + 0  =   **1**, carry **0**<br>1 + 1  =   **1**, carry **1**
		|           |
       XOR      AND