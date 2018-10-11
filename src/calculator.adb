package body Calculator with SPARK_Mode => On is

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer is
   begin
      return (First_Operand + Second_Operand);
   end Add;

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin
      Result := Add(First_Operand, -Second_Operand);
   end Subtract;

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin
      Result := 0;
   end Multiply;

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer) is
   begin
      Quotient := 0;
      Remainder := 0;
   end Divide;

end Calculator;
