Program degree;
Var
  i,j,n: integer;
BEGIN
  Readln(n);
  j := 1;
  For i := 1 to n do
    j := j * 2;
  Writeln(j);  
END.