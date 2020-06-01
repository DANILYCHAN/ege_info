{   Назовем число палиндромом, если оно не меняется при перестановке его цифр в обратном порядке.
    Задача №119. Количество палиндромов
    Ввод : число
    Вывод : количество натуральных палиндромов, не превосходящих K
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
    k, n, i : integer;
    
BEGIN
    Read(k);
    n := 0;
  
    For i := 1 to k do begin
        if i = reverse(i) then begin
            n += 1;
        end;
    end;
    
    write(n);
END.

