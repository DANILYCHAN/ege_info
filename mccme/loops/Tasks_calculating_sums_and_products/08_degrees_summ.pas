Program degrees_summ;
 
   Function Degree(a, n: integer): integer;
   Var
     i,k: integer;
   begin
     k := 1;
     For i := 1 to n do
       k := k * a;
     Degree := k;
   end;
   
  Var i, n, summ: integer;
  BEGIN
    Read(n);
    For i := 0 to n do
      summ := summ + Degree(2, i);
    Writeln(summ);
  END.