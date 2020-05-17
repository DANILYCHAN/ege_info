Program smallest_divisor;
Var i, x, min: integer;
BEGIN
  Read(x);
  i := 2;
  While x mod i <> 0 do i := i+1;
  Writeln(i);
END.