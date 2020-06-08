{
    Задача №9708 Решу ЕГЭ.
    Input: Первое число - число элементов в последовательности. Затем числа, одно в строке.
    Output: Наибольшее число, кратное 14 и являющимся произведением двух элементов последовательности с различными номерами.
    
    TODO: словесное описание алгоритма.
}

Program max_divisible_by_14;

VAR
    max : Integer; {Искомое значение}
    N : Integer; {Количество элементов}
    max_14_1, max_14_2, max_14, max_7, max_2, max_x : Integer; {Максимальные значения делящиеся на ...}
    max_double_14, max_14_7, max_14_x_2, max_14_x, max_7_2 : Integer; {Максимальные значения произведений}
    i, a: Integer;

BEGIN
    Readln(N);
    max_14_1 := -1;
    max_14_2 := -1;
    max_7 := -1;
    max_2 := -1;
    max_x := -1;
    
    For i := 1 to N do begin
        read(a);
        if (a mod 14 = 0) and (a > max_14_1) then begin
            max_14_1 := a;
        end else if (a mod 14 = 0) and (a > max_14_2) then begin
            max_14_2 := a;
        end else if (a mod 7 = 0) and (a > max_7) then begin
            max_7 := a;
        end else if (a mod 2 = 0) and (a > max_2) then begin
            max_2 := a;
        end else if (a > max_x) then begin
            max_x := a;
        end;
    end;
    
    If max_14_1 > max_14_2 then begin
        max_14 := max_14_1;
    end else begin
        max_14 := max_14_2;
    end;
    
    max := -1;
    max_double_14 := max_14_1 * max_14_2;
    max_14_7 := max_14 * max_7;
    max_14_x_2 := max_14 * max_2;
    max_14_x := max_14 * max_x;
    max_7_2 := max_7 * max_2;
    
    max := max_double_14;
    If max_14_7 > max then max := max_14_7;
    If max_14_x_2 > max then max := max_14_x_2;
    If max_14_x > max then max := max_14_x;
    If max_7_2 > max then max := max_7_2;
    
    Writeln(max);
END.
