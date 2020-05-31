{   
    Задача №116. Минимальная и максимальная цифры
    Вход : число
    Выход : минимальная и максимальная цифры числа
}
function MinDigit (n:longint):integer;

VAR
    min, digit : integer;
begin
    min := 11;
    
    while n > 0 do begin
        digit := n mod 10;
        if digit < min then
            min := digit;
        n := n div 10;
    end;
    MinDigit := min;
end;

function MaxDigit (n:longint):integer;

VAR
    max, digit : integer;
begin
    
    while n > 0 do begin
        digit := n mod 10;
        if digit > max then
            max := digit;
    end;
    MaxDigit := max;
end;

Var
    n : integer;

BEGIN
    Read(n);
    Write(MinDigit(n), ' ', MaxDigit(n));
END.