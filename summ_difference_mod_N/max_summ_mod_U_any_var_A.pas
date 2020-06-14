{
    Вычисление максимальной суммы делящейся на любое U.
    Вход: число U, количество чисел, числа.
    Вывод: максимальная суммы делящейся на любое U
}
Program max_summ_mod_U;
    VAR
        U, N, i, j, summ: Integer;
        a: array[1..10001] of Integer;
BEGIN
    summ := -1;
    Readln(U);
    Readln(N);
    for i := 1 to N do begin
        read(a[i]);
    end;
    
    for i := 1 to N - 1 do begin
        for j := i + 1 to N do begin
            if ((a[i] + a[j]) mod U = 0) and ((a[i] + a[j]) > summ) then begin
                summ := a[i] + a[j];
            end;
        end;
    end;
    
    Writeln(summ);
end.