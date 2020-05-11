Program summ_even_odd;
const N=6;
Var
  a: array [1..N] of integer;
  i,e,o:integer;
BEGIN
  For i := 1 to N do readln(a[i]);
  e:=0;
  o:=0;
  For i := 1 to N do begin
    if a[i] mod 2 = 0 then e := e + a[i]
    else o := o + a[i];
  end;
  Writeln('Summ of evens ', e);
  Writeln('Sum of odds ', o);
END.