Program Summ_of_zeros;
Var i, x, s, n: integer;
BEGIN
  Read(n);
  s := 0;
 For i := 1 to n do begin
   Read(x); 
   if x = 0 then s := s + 1;
   end;
  Write(s);
END.