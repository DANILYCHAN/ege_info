{
    Источник : informatics.mccme.ru Задача №3068
    
    Вход:
          a - последовательность чисел оканчивающаяся нулём.
    Выход: максимальное число последовательности
}

Program Maximum_consistency;

VAR 
  a, max: integer;

BEGIN
    max := -1;
    a := 1;
    
    While a <> 0 do begin
        read(a);
        if a > max then begin
            max := a;
        end;
    end;
  
    Writeln(max);
END.
