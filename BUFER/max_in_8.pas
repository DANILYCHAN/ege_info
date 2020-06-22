{
    Задание 27 № 7772 Решу ЕГЭ
    Input : поток элементов
    Output : максимальное произведение двух элементов последовательности, номера которых различаются не менее чем на 8
}
Program max_in_8;
    const 
        DELTA = 8;
VAR
    buf_ring : array [0..DELTA - 1] of Integer; {Буффер}
    buf_ix : Integer;{Номер элемента буфера}
    N : Integer; {Количество элементов}
    max_num : Integer; {Макисмальное число}
    max : Integer; {Максимальное произведение}
    num : Integer; {Число}
    i, k : Integer;
BEGIN
    Readln(N);
    for i := 0 to DELTA - 1 do begin
        readln(buf_ring[i]);
    end;
    
    max_num := -1;
    max := -1;
    
    for i := DELTA to N - 1 do begin
        readln(num);
        buf_ix := i mod DELTA;
        if buf_ring[buf_ix] > max_num then
            max_num := buf_ring[buf_ix];
        k := num * max_num;
        if k > max then begin
            max := k;
        end;
        buf_ring[buf_ix] := num;
    end;

    Writeln(max);
END.