Program remainder;
Var i, a, b, c, d: integer;
BEGIN
  Read(a, b, c, d);
  For i := a to b do
    if i mod d = c then Write(i,' ');
  
END.