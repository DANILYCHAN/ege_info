{
    Задача №115. Количество нулей
    Вход : число
    Выход : количество нулей в числе
}
function NumberOfZeroes(n: integer): integer;

VAR
    n_0, digit : integer;
    
begin
    n_0 := 0;
    
    if n = 0 then begin
        NumberOfZeroes := 1;
    end else begin while n > 0 do begin
        digit := n mod 10;
        if digit = 0 then n_0 += 1;
        n := n div 10;
        end;
        NumberOfZeroes := n_0;
    end;
    
end;

VAR
    n : integer;

BEGIN
  Read(n);
  Writeln(NumberOfZeroes(n));
END.   
