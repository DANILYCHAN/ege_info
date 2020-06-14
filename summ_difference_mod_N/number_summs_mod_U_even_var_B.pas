{
    Найти количество пар чисел делящихся на чётное U.
    Ввод: Число U, количество чисел, числа.
    Вывод: количество пар чисел делящихся на чётное U.
}
Program summ_mod_U_var_B;
VAR
    U: Integer;{Число, на которое необходимо поделить}
    N: Integer;{Количество чисел}
    num: Integer;{Количество пар делящихся на U}
    a: array[0..10000] of Integer;{Остатки от деления на U}
    i, j, k: Integer;
BEGIN
    Readln(U);
    Readln(N);
    num := 0;
    for i := 1 to (U - 1) do begin
        a[i] := 0;
    end;
    
    for i := 1 to N do begin
        read(k);
        j := k mod U;
        a[j] += 1;
    end;
    
    for i := 1 to (U - 1) div 2 do begin
        num += a[i] * a[U - i];
    end;
    
    num += ((a[U div 2] * (a[U div 2] - 1)) div 2) + ((a[0] * (a[0] - 1)) div 2);
    
    Writeln(num);
END.