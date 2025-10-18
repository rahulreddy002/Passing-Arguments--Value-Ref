
//-----------------------Passing Arguments- Value/Ref ------------------------------
//			                                      																	  --
//                        VLSI Aspirant : RAHUL REDDY DB												  --
//				 					                                      											  --
//                        Learn without limitations...													  --
//	                                   		    															      --
//----------------------------------------------------------------------------------

// pass_by_value
module example;

  
  int a, b, c; // Global variables
  int result;

  // Function with pass-by-value
  function  int pass_by_reference( int x, y, z); // x, y, z are LOCAL copies of a, b, c
    // Any changes here will affect the global variables
    x = x + y;
    y = y + x;
    z = x + x;
    $display("LOCAL MEM --inside function -- x:%0d  y:%0d  z:%0d", x, y, z);

    return z; // returning some computed value
  endfunction

  // Test
  initial begin
    $display ("-------------------pass_by_reference---------------------\n");
    a = 10;
    b = 20;
    c = 30;
    $display("Before function call -- a:%0d  b:%0d  c:%0d", a, b, c);

    
    result = pass_by_reference(a, b, c);

    $display("After function call  -- a:%0d  b:%0d  c:%0d", a, b, c);
    $display("Returned value from function = %0d", result);
    $display("----------------------------------------------------------\n");
  end

endmodule


//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//pass_by_ref
module example;

  
  int a, b, c; // Global variables
  int result;

  // Function with pass-by-value
  function  automatic int pass_by_reference(ref int x, y, z); // x, y, z are LOCAL copies of a, b, c
    // Any changes here will affect the global variables
    x = x + y;
    y = y + x;
    z = x + x;
    $display("LOCAL MEM --inside function -- x:%0d  y:%0d  z:%0d", x, y, z);

    return z; // returning some computed value
  endfunction

  // Test
  initial begin
    $display ("-------------------pass_by_reference---------------------\n");
    a = 10;
    b = 20;
    c = 30;
    $display("Before function call -- a:%0d  b:%0d  c:%0d", a, b, c);

    
    result = pass_by_reference(a, b, c);

    $display("After function call  -- a:%0d  b:%0d  c:%0d", a, b, c);
    $display("Returned value from function = %0d", result);
    $display("----------------------------------------------------------\n");
  end

endmodule


