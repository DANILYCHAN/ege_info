Program The_number_of_even_elements_of_the_sequence;{Определите количество четных элементов в последовательности, завершающейся числом 0.
Само число 0, и все, что следует за ним, учитывать не нужно.}
Var 
  A: array [1..10001] of integer;
  i: integer;
  k, p: real;
BEGIN
  
  For i := 1 to 10001 do begin
    Read(a[i]);
    if a[i] mod 2 = 0 then k += 1;
    if a[i] = 0 then
      break
    end;
    Writeln(k-1);
END.