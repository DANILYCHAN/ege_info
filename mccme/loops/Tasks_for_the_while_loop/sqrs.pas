{
  Источник: ???
  
  Input: Число n.
  Output: Все точные квадраты натуральных чисел, не превосходящие данного числа n.
}
 
Program sqrs; 
Var i, n, k: integer;
BEGIN
  Read(n);
  i := 1;
  k := sqr(i);
  if n <> 0 then begin
      While k < n do begin
          Writeln(k);
          i += 1;
          k := sqr(i);
      end;
  end else begin
      Writeln('NONE');
  end;
END.
