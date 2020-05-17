Program Summ_of_you_want_number;
Var i, x, s, n: integer;
BEGIN
  Read(n);
 For i := 1 to n do begin
   Read(x); 
   s := s + x;
   end;
  Write(s);
END.