Program Squares;
Var i, a, b: integer;
BEGIN
  Read(a, b);
  For i := 1 to b do
    if (sqr(i) > a) and (sqr(i) < b) then Write(sqr(i),' ');
END.