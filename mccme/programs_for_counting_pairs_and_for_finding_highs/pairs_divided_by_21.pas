Program pairs_divided_by_21;
Var
  n_21, n_3, n_7, n_x, n_n, number, number_copmosition_multiple_21, i : integer;
BEGIN
    write('Количество чисел ');
    read(n_n);
    for i := 1 to n_n do begin
        readln(number);
        if number mod 21 = 0 then begin
            n_21 += 1;
        end else if number mod 3 = 0 then begin
            n_3 += 1;
        end else if number mod 7 = 0 then begin
            n_7 += 1;
        end else n_x += 1;
    end;
    number_copmosition_multiple_21 := (n_21 * n_x) + (n_21 * n_3) + (n_21 * n_7) + ((sqr(n_21) - n_21) div 2);
    Writeln('Количество чисел, делящиеся на 21 в произведении ', number_copmosition_multiple_21);
END.