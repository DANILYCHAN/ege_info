Program Number_dividers;
Var i, x: integer;
BEGIN
  Read(x);
  For i := 1 to x do
    if x mod i = 0 then Write(i,' ');

END.