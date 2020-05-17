Program Number_of_Divisors;
Var i, x, s: integer;
BEGIN
  Read(x);
  s := 0;
  For i := 1 to x do
    if x mod i = 0 then s := s + 1;
  Writeln(s);

END.