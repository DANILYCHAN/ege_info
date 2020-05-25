Program Artist_Splitter;{Напишите алгоритм для Развоителя, который преобразует число A в число B и при этом содержит минимальное число команд. 
Команды алгоритма нужно выводить по одной в строке, первая команда обозначается, как -1, вторая команда как :2.}
Var A, B: integer;
BEGIN
  Readln(A, B);
  While A >= (2 * B) do begin
    if (A mod 2 = 0) then begin
      A := (A div 2);
      Writeln (':2');
      end;
    if (A mod 2 <> 0) then begin
      A := (A - 1);
      Writeln ('-1');
    end;
  end;
  While A > B do begin
    A := (A - 1);
    Writeln ('-1');
  end;
  
END.