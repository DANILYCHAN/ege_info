{ 
    Вход : размер входа, поток чисел
    Выход : число пар чисел, произведение которых делится на 2
}

PROGRAM pairs_even;

VAR
    n_even, n_odd : integer; { количество четных и не четных }
    input_size, answer, n, i : integer;
    
BEGIN
    n_even := 0;
    n_odd := 0;
    
    write('Количество чисел ');
    read(input_size);
    
    for i:= 1 to input_size do begin
        read(n);
        if n mod 2 = 0 then begin
          n_even += 1;
        end else begin
          n_odd += 1;
        end;
    end;
    
    answer := ((sqr(n_even) - n_even) div 2) + 
              (n_even * n_odd);
    Writeln('Количество пар, дающих в произведении чётное число = ', answer);
END.