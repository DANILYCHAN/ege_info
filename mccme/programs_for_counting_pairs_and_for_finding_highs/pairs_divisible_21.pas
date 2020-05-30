{ 
    Вход : размер входа, поток чисел
    Выход : число пар чисел, произведение которых делится на 21
}
 
PROGRAM divisible_by_21;

VAR
    num_21, num_3, num_7, num_x : Integer; { количество делящихся на ... }
    input_size, n, i, answer : Integer;

BEGIN
    num_21 := 0;
    num_3 := 0;
    num_7 := 0;
    num_x := 0;

    write('Количество чисел: ');
    read(input_size);

    for i := 1 to input_size do begin
        readln(n);
        if n mod 21 = 0 then begin
            num_21 += 1;
        end else if n mod 3 = 0 then begin
            num_3 += 1;
        end else if n mod 7 = 0 then begin
            num_7 += 1;
        end else begin
            num_x += 1;
        end;
    end;

    answer := 
        (num_3 * num_7) +
        (num_21 * (num_3 + num_7 + num_x)) +
        ((sqr(num_21) - num_21) div 2);

  writeln('Количество пар, чье произведение делится на 21: ', answer);
END.
