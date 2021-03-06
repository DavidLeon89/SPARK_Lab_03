package Calculator with SPARK_Mode => On is
   Last_Quotient  : Integer;
   Last_Remainder : Integer;

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer
   --  Compute the addition of First_Operand plus Second_Operand
   with
--      Global  => ...
--      Depends => ...
       Pre  => 
       (if First_Operand > 0 and Second_Operand > 0 then
          First_Operand   <= Integer'Last - Second_Operand
       )
       and
       (if First_Operand < 0 and Second_Operand < 0 then
          Second_Operand >= Integer'First - First_Operand
       ),

         Post => 
           Add'Result = First_Operand + Second_Operand
   ;
   
   
   
   
   --  Completa este contrato para que podamos verificar formalmente
   --  esta funcion.

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using the function 'Add', compute the subtraction of First_Operand
   --  plus Second_Operand
   with
--      Global  => ...
--      Depends => ...
        Pre  => 
       (if First_Operand < 0 and Second_Operand > 0 then
          First_Operand >= Integer'First + Second_Operand
       )        
       and
       (if First_Operand >= 0 and Second_Operand < 0 then
           First_Operand <= Integer'Last + Second_Operand 
        ), 
           
         Post => 
           Result = First_Operand - Second_Operand
           
   ;
   --  Completa este contrato para que podamos verificar formalmente
   --  esta funcion.

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using the function 'Add' and a for-loop statement, compute the
   --  multiplication of First_Operand by Second_Operand
   with
--      Global  => ...
--      Depends => ...
        Pre  => True,
        Post => True;
   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer)
   --  Using the function 'Add', the procedure 'Subtract' and a
   --  while-loop-statement, compute the division of First_Operand
   --  by Second_Operand and store the resulting Quotient and
   --  Remainder in the global variables Last_Quotient and
   --  Last_Remainder.
   with
--      Global  => ...
--      Depends => ...
        Pre     => True,
        Post    => True;
   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.
    
end Calculator;
