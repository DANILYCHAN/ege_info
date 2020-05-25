Program Sequence_average;{Определите сумму всех элементов последовательности, завершающейся числом 0.Числа, следующие за нулем, считывать не нужно.}
Var 
  A: array [1..10001] of integer;
  i: integer;
  k, p: real;
BEGIN
  
  For i := 1 to 10001 do begin
    Read(a[i]);
    if a[i] <> 0 then begin
    k += a[i];
    p += 1;
    end;
    if a[i] = 0 then
      break
    end;
    Writeln(k/p);
END.