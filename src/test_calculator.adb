--  Anade mas tests para comprobar todas las combinaciones de
--  operadores positivos, negativos y el cero.

with Ada.Text_IO;     use Ada.Text_IO;
with Test_Assertions; use Test_Assertions;
with Calculator;      use Calculator;

procedure Test_Calculator is

   procedure Test_1 is
   begin
      Assert_True (Add (3, 4) = 7, "Add: Positive numbers");
   exception
      when others =>
         null;
   end Test_1;

   procedure Test_2 is
      Result : Integer;
   begin
      Subtract (3, 4, Result);
      Assert_True (Result = -1, "Subtract: Positive numbers");
   exception
      when others =>
         null;
   end Test_2;

   procedure Test_3 is
      Result : Integer;
   begin
      Multiply (3, 4, Result);
      Assert_True (Result = 12, "Multiply: Positive numbers");
   exception
      when others =>
         null;
   end Test_3;

   procedure Test_4 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Divide (13, 2, Quotient, Remainder);

      Assert_True (Quotient = 6 and Remainder = 1,
        "Divide: Positive numbers");
   exception
      when others =>
         null;
   end Test_4;

begin
   Put_Line ("********************* Test_Calculator");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
end Test_Calculator;
