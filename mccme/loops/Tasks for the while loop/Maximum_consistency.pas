Program Maximum_consistency;{Последовательность состоит из натуральных чисел и завершается числом 0. Определите значение наибольшего элемента последовательности.
Числа, следующие за нулем, считывать не нужно.}
Var 
  A: array [1..10001] of integer;
  i, max: integer;
BEGIN
  max := -1;
  For i := 1 to 10001 do begin
    Read(a[i]);
    if a[i] > max then max := a[i];
    if a[i] = 0 then
      break
    end;
    Writeln(max);
END.