{
    Задача №346. Подсчет чисел

    Подсчитать, сколько среди данных N чисел  нулей, положительных чисел, отрицательных чисел.
}

Program Summ_of_zeros;

Var i, x, summ_of_zero, n, summ_plus, summ_minus: integer;

BEGIN
  Read(n);

  summ_of_zero := 0;
  summ_plus := 0;
  summ_minus := 0;

  For i := 1 to n do begin
    Readln(x);
    if x = 0 then 
      summ_of_zero += 1 
    else if x > 0 then 
      summ_plus += 1
    else
       summ_minus += 1;
  end;

  Write(summ_of_zero,' ',summ_plus,' ',summ_minus);
END.
