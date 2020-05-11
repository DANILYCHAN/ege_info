Program sum_digits;
Var
  number,summ:integer;
BEGIN
 Read(number);
 summ := 0;
 While number > 0 do begin
   summ := summ + (number mod 10);
   number := number div 10;
 end;
 Writeln(summ); 
END.
