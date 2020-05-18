{Задача №350. Количество решений.
Входные данные
Вводятся 5 чисел: a, b, c, d и e.
Выходные данные
Найдите все целые решения уравнения ( ax3 + bx2 + cx + d ) / ( x - e ) = 0 на отрезке [0,1000] и выведите их количество.}

Program Number_of_decisions;

Var a, b, c, d, e, x, k: integer;

BEGIN
  
  Read(a, b, c, d, e);
  k := 0;
  For x := 0 to 1000 do begin
    if (((a*power(x,3) + b*sqr(x) + c*x + d)/(x-e)) = 0) then
  k += 1;
  end;
  Writeln(k);
  
END.