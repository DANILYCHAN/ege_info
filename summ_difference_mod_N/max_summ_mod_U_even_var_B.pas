{
    Максимальная сумма делящаяся на чётное U.
    Ввод: Число U, количество чисел, числа.
    Вывод: Максимальная сумма делящаяся на U.
}
Program summ_mod_U_even_var_B;
VAR
    U: Integer;{Число, на которое необходимо поделить}
    N: Integer;{Количество чисел}
    max: Integer;{Наибольшая сумма чисел делящаеся на U}
    a: array[0..10000] of Integer;{Максимальные числа с определённым остатком}
    i, j, k: Integer;
    max_01, max_02: Integer;{Максимальные числа с нулевым остатком}
    max_half_1, max_half_2: Integer;{Максимальные числа с остатком U/2}
BEGIN
    Readln(U);
    Readln(N);
    max_01 := -1;
    max_02 := -1;
    max_half_1 := -1;
    max_half_2 := -1;
    for i := 0 to (U - 1) do begin
        a[i] := -1;
    end;
    
    for i := 1 to N do begin
        read(k);
        j := k mod U;
        if j = 0 then begin
            if k > max_01 then begin
                max_01 := k;
            end else if k > max_02 then begin
                max_02 := k;
            end;
        end else if j = (U div 2) then begin
            if k > max_half_1 then begin
                max_half_1 := k;
            end else if k > max_half_2 then begin
                max_half_2 := k;
            end;
        end else if k > a[j] then begin
            a[j] := k;
        end;
    end;
    
    max := -1;
    
    if max_01 + max_02 > max then begin
        max := max_01 + max_02;
    end else if max_half_1 + max_half_2 > max then begin
        max := max_half_1 + max_half_2;
    end;
    
    for i := 1 to (U - 1) div 2 do begin
        if a[i] + a[U - i] > max then begin
            max := a[i] + a[U - i];
        end;
    end;
    
    Writeln(max);
END.