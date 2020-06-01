{
    Задача №118. Обращение числа
    Ввод : число
    Вывод : цифры данного числа в обратном порядке
}
function reverse (n:integer):integer;

VAR
    digit  : integer;
    
begin
    digit := 0;

    While n > 0 do begin
        digit := digit * 10 + (n mod 10);
        n := n div 10;
    end;
    
    reverse := digit;
end;

Var 
    n : integer;
    
BEGIN
    Readln(n);
    Writeln(reverse(n));
END.

