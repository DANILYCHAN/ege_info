Program min_max_summ;
const N=1000;
var
  a: integer;
  i, min, k, max, s: integer;
BEGIN 
  readln(k);
  min := 10001;
  max := -1;
  s := 0;
  for i := 1 to k do begin 
    readln(a);
    if a < min then min := a;
    if a > max then max := a;
    s := s+a;
  end;
  Writeln(min);
  Writeln(max);
  Writeln(s);
END.