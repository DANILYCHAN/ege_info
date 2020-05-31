{
    Задача №114. Сумма цифр числа
    Вход : число
    Выход : сумма цифр числа
}
function SumOfDigits (n:longint) : integer;

VAR
    summ_digits := 0;
    
begin
    summ_digits := 0;
        
    while n > 0 do begin
        summ_digits += n mod 10;
        n := n div 10;
    end;
    SumOfDigits := summ_digits;
end;

VAR
    n : integer;

BEGIN
  Read(n);
  Writeln(SumOfDigits(n));
END.   

    
  
  