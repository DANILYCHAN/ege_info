{
    Вход : размер входа, поток чисел
    Выход : Максимальное значение чётного произведения
}
Program max_even_copmosition;

VAR
  max_even1, max_even2, max_odd : integer; { Максимальные четные и не четные значения }
  input_size, n, i, answer : integer;

BEGIN
    max_even1 := -1;
    max_even2 := -1;
    max_odd := -1;
    
    Write('Количество чисел ');
    read(input_size);
    
    for i := 1 to input_size do begin
        readln(n);
        if n mod 2 = 0 then begin
            if n > max_even1 then begin
                max_even1 := n;
            end else if n > max_even2 then begin
                max_even2 := n;
            end;
        end else if n > max_odd then begin
            max_odd := n; 
        end;
    end;
    
    Write('Максимальное значение чётного произведения ');
    
    if max_even2 > max_odd then begin
        Write(max_even1 * max_even2);
    end else begin
        Write(max_even1 * max_odd);
    end;
END.