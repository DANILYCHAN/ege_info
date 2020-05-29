Program Minimum_divisor; {Дано целое число, не меньшее 2. Выведите его наименьший натуральный делитель, отличный от 1.}
Var i, n: integer;
BEGIN
  Read(n);
  i := 2;
  While n mod i <> 0 do begin
    i += 1;
    end;
  Writeln(i);
END.