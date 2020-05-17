Program factorial;
Var
  i,j,n: integer;
BEGIN
  Readln(n);
  j := 1;
  For i := 1 to n do
    j := j * i;
  Writeln(j);  
END.