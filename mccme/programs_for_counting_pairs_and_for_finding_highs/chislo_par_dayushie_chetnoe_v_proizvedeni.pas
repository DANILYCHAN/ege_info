Program chislo_par_dayushie_chetnoe_v_proizvedenii;
Var 
  number_even, number_odd, number_numbers, number_composition_even, number, i : integer;
BEGIN
  write('Количество чисел ');
  read(number_numbers);
  for i:= 1 to number_numbers do begin
    read(number);
    if number mod 2 = 0 then begin
      number_even += 1;
    end else begin
      number_odd += 1;
    end;
  end;
  number_composition_even := ((sqr(number_even) - number_even) div 2) + (number_even * number_odd);
  Writeln('Количество пар, дающих в произведении чётное число = ', number_composition_even);
END.