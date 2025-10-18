What is Pass by Value ? 
Whenever the function is called, if any changes are made to the argument inside the subroutine, those changes will not 
be visible outside the subroutine. 

What is Subroutine? 
• A subroutine is a piece of code that you can define once and reuse many times. 
• In function subroutine that returns a value. 
• In task subroutine that may or may not return values, but can perform actions.

Why  to call Subroutine? 
• It’s a routine (set of instructions) that is “subordinate” to your main program. 
• Instead of writing the same code again and again, you put it into a subroutine (function/task) and call it 
whenever needed. 

Why Use Pass by Value? 
• When you don’t want the original variable to change. 
• Good for read-only operations where you just need to use the data, not modify it. 

Where It’s Used ? 
• In functions (default in SystemVerilog). 
• For temporary calculations. 

What is Pass by Reference ? 
Whenever the function is called, if any changes are made to the argument inside the subroutine, those changes will be 
visible outside the subroutine. 

Why Use Pass by Reference? 
• If you change it inside the function → the global/original variable is directly modified. 
• There’s no separate local memory for that variable. 
• For speed and efficiency. 

Where ref is used in real time projects ? 
• RTL/Testbench – counters, memories. 
• UVM Driver/Monitor – for transactions and packets 
• UVM Scoreboard  - for comparing Dut and reference model outputs. 

Template 
<img width="1195" height="556" alt="image" src="https://github.com/user-attachments/assets/d6fa6175-d868-4021-9f8c-5b79812f5d84" />

Pass by value
<img width="1127" height="704" alt="image" src="https://github.com/user-attachments/assets/e353bcfc-7b59-4e73-ae8d-c704edfad23c" />

Pass by reference
<img width="1196" height="583" alt="image" src="https://github.com/user-attachments/assets/c9dbdae2-e0bc-49a8-8025-dc392e6f6dff" />


