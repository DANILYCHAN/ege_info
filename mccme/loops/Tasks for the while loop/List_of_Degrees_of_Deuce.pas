Program List_of_Degrees_of_two; {По данному числу N распечатайте все целые степени двойки, не превосходящие N, в порядке возрастания.
Операцией возведения в степень пользоваться нельзя!}
Var i, n, k: integer;
BEGIN
  Read(n);
  k := 1;
  While k < n do begin
    Writeln(k);
    k := k * 2;
    end;
END.