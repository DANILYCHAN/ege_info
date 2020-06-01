{
    Задача №118. Обращение числа
    Ввод : число
    Вывод : цифры данного числа в обратном порядке
}
function reverse (n:integer):integer;
    
begin
    While n > 0 do begin
        Write(n mod 10);
        n := n div 10;
    end;
end;

Var 
    n : integer;
    
BEGIN
    Read(n);
    Write(reverse(n));
END.

