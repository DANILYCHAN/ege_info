Program Binary_logarithm;{По данному числу N распечатайте все целые степени двойки, не превосходящие N, в порядке возрастания.}
Var i, n, k: integer;
BEGIN
  Read(n);
  k := 1;
  i := 0;
  While k < n do begin
    k := k * 2;
    i += 1;
    end;
  Writeln(i);
END.