{
    Задача №117. Двоичная запись
    Вход : число
    Вывод : двоичная запись числа в обратном порядке
}
Program binary_write_in_reverse;
Var
    n : integer;
BEGIN
    Write('Введите число ');
    Readln(n);
    While n > 0 do begin
        write(n mod 2);
        n := n div 2;
    end;
END.
    