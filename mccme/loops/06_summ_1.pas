Program summ_1;
Var 
  i, n: integer;
  summ: real;
BEGIN
  Read(n);
  summ := 1;
  For i := 2 to n do
    summ := summ + (1/sqr(i));
  Writeln(summ);
  
END.
