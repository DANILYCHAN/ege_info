Program Does_it_power2;{Дано натуральное число N. 
Выведите слово YES, если число N является точной степенью двойки, или слово NO в противном случае.}
Var n, k: integer;
BEGIN
  Read(n);
  k := 1;
  While k < n do begin
    k := k * 2;
    end;
  If (k = n) then Writeln('YES') else
    Writeln('NO');
END.