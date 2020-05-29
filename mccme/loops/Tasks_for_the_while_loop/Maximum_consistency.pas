Program Maximum_consistency;{Последовательность состоит из натуральных чисел и завершается числом 0. Определите значение наибольшего элемента последовательности.
Числа, следующие за нулем, считывать не нужно.}
Var 
  a, i, max: integer;
BEGIN
  max := -1;
  For i := 1 to 10001 do begin
    Read(a);
    if a > max then max := a;
    if a = 0 then
      break
    end;
    Writeln(max);
END.