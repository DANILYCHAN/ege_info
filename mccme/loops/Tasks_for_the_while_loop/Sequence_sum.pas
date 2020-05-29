Program Sequence_sum;{Определите сумму всех элементов последовательности, завершающейся числом 0.Числа, следующие за нулем, считывать не нужно.}
Var 
  A: array [1..10001] of integer;
  i, k: integer;
BEGIN
  For i := 1 to 10001 do begin
    Read(a[i]);
    if a[i] <> 0 then k += a[i] else
      break
    end;
    Writeln(k);
END.