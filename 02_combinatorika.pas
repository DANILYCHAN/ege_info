Program z1;

 Function Factorial (n:integer): integer;
  var
   i,k: integer;
  begin
    k := 1;
    for i := 1 to n do
      k := k*i;
    Factorial := k;
  end;
  
 Function Combination (n, k: integer): integer;
  begin
    Combination := Factorial(n) div Factorial(n-k) div Factorial(k);
  end;
 
 
BEGIN
 Writeln(Factorial(5));
 Writeln(Combination(4, 2));
end.