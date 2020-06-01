{   
    Задача №116. Минимальная и максимальная цифры
    Вход : число
    Выход : минимальная и максимальная цифры числа
}
function MinDigit (n:longint):integer;
var
    min, digit : integer;
begin
    min := 11;
    
    repeat
        digit := n mod 10;
        if digit < min then
            min := digit;
        n := n div 10;
    until n = 0;

    MinDigit := min;
end;

function MaxDigit (n:longint):integer;
var
    max, digit : integer;
begin
    max := -1;

    repeat
        digit := n mod 10;
        n := n div 10;
        if digit > max then
            max := digit;
    until n = 0;

    MaxDigit := max;
end;

VAR
    n : integer;

BEGIN
    Read(n);
    Writeln(MinDigit(n), ' ', MaxDigit(n));
END.
