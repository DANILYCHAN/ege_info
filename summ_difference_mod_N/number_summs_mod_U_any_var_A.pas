{
    Подсчёт количества пар делящихся на чётное U.
    Ввод: Число U, количество пар, числа.
    Вывод: Количество сумм пар чисел делящихся на U.
}
Program summ_mod_U;
Var
    a: array [1..10001] of Integer;
    num: Integer;{Количество пар}
    i, j: Integer;
    N: Integer;{Количество чисел до 10000}
    U: Integer;{Чётное число, на которое необходимо делить}
BEGIN
    Readln(U);
    Readln(N);
    num := 0;
    for i := 1 to N do begin
        readln(a[i]);
    end;
    
    for i := 1 to (N - 1) do begin
        for j := (i + 1) to N do begin
            if ((a[i] + a[j]) mod U) = 0 then begin
                num += 1;
            end;
        end;
    end;
    
    Writeln(num);
END.