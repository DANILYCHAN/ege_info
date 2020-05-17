Program summ_2;
Var 
  i, n: integer;
  summ: real;
BEGIN
  Read(n);
  summ := 1;
  For i := 1 to n do
    summ := summ + (power((-1),i)/(2*i+1));
  Writeln(4*summ);
  
END.
