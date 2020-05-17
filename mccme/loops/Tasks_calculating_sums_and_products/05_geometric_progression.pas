Program geometric_progression;

  Function Degree(a, n: integer): integer;
   Var
     i,k: integer;
   begin
     k := 1;
     For i := 1 to n do
       k := k * a;
     Degree := k;
   end;
   
   Var
     a, n, j, summ: integer;
   
  BEGIN
    Read(a, n);
    summ := 1;
    For j := 1 to n do
      summ := summ + Degree(a, j);
    Writeln(summ);
      
  END.