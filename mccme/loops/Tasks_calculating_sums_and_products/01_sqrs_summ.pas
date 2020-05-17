Program sqr_summ;
Var
  i,j,n: integer;
BEGIN
  Readln(n);
  j := 0;
  For i := 1 to n do
    j := j + sqr(i);
  Writeln(j);  
END.