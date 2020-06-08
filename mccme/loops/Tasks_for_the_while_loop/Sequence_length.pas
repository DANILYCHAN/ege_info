{
    Источник: informatics.mccme.ru, №3064.
    
    Input: последовательность целых неотрицательных чисел, каждое число записано в отдельной строке, завершается числом 0.
    Output: количество чисел во входе, не считая завершающего нуля.
}

Program Sequence_length;
Var 
    k, a: integer;
BEGIN
    a := 1;
    k := -1;
    While a <> 0 do begin
        read(a);
        k += 1;
    end;
    Writeln(k);
END.
