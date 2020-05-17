Program strange_summ;

 Function Factorial (n:integer): integer;
  var
   i,k: integer;
  begin
    k := 1;
    for i := 1 to n do
      k := k*i;
    Factorial := k;
  end;
  
  Var summ: real;
  i, n: integer;
BEGIN
 Readln(n);
 summ := 0;
 For i := 0 to n do
   summ := summ + (1/Factorial(i));
 Writeln(summ);
END.