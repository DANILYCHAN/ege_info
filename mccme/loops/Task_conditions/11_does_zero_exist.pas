{Задача №347. Ноль или не ноль. Проверьте, есть ли среди данных N чисел нули. Входные данные
Вводится число N, а затем N чисел.
Выходные данные
Выведите YES, если среди введенных чисел есть хотя бы один нуль, или NO в противном случае.}
Program does_zero_exist;
Var a, n, i, zero: integer;
BEGIN
  Read(n);
  zero := 0;
  For i := 1 to n do begin
    Read(a);
    if (a = 0) then zero := 1;
    end;
  If (zero = 1) then 
    Writeln('YES')
  else Writeln('NO');
END.

