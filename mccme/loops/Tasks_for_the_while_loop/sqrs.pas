Program sqrs; {Выведите все точные квадраты натуральных чисел, не превосходящие данного числа N.}
Var i, n: integer;
BEGIN
  Read(n);
  i := 1;
  While sqr(i) < n do begin
    Writeln(sqr(i));
    i += 1;
    end;
END.