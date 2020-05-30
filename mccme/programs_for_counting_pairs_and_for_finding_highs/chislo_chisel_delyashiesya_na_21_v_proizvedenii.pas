Program chislo_chisel_delyashiesya_na_21_v_proizvedenii;
Var
  number_multiple_21, number_multiple_3, number_multiple_7, number_no_multiple, number_numbers, number, number_copmosition_multiple_21, i : integer;
BEGIN
  write('Количество чисел ');
  read(number_numbers);
  for i := 1 to number_numbers do begin
    readln(number);
    if number mod 21 = 0 then begin
      number_multiple_21 += 1;
    end else begin
      if number mod 3 = 0 then begin
        number_multiple_3 += 1;
      end else begin
        if number mod 7 = 0 then begin
          number_multiple_7 += 1;
      end else begin
        number_no_multiple += 1;
      end;
      end;
    end;
  end;
  number_copmosition_multiple_21 := (number_multiple_21 * number_no_multiple) + (number_multiple_21 * number_multiple_3) + (number_multiple_21 * number_multiple_7) + ((sqr(number_multiple_21) - number_multiple_21) div 2);
  Writeln('Количество чисел, делящиеся на 21 в произведении ', number_copmosition_multiple_21);
END.