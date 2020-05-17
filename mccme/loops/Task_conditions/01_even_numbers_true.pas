Program Even_numbers_true;
Var i, a, b: integer;
BEGIN
  Read(a, b);
  For i := a to b do
    if i mod 2 = 0 then Write(i,' ');
  
END.