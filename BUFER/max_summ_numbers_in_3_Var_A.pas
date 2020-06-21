{
    Вариант A
    Input : поток чисел оканчивающийся нулём
    Output : максимальная сумма чисел, отстоящих друг от друга не менее чем на 3 элемента
}

Program max_summ_numbers_in_3_Var_A;

const 
    N = 10;
    DELTA = 3;

VAR
    max_summ : Integer; {Искомое значение}
    a : array[1..N] of Integer;
    i, j : Integer;
    k : Integer;
    
BEGIN
    for i := 1 to N do begin
        Read(a[i]);
    end;
    
    max_summ := -1;
    k := 0;
    for i := 1 to N - DELTA do begin
        for j := DELTA to N do begin
            k := a[i] + a[j];
            if k > max_summ then begin
                max_summ := k;
            end;
        end;
    end;
    
    Writeln(max_summ);
END.