Program summ_even_odd;
const N=6;
Var
  a, i, summ_evens, summ_odds :integer;
BEGIN
  summ_evens := 0;
  summ_odds := 0;

  For i := 1 to N do begin
    readln(a);
    if a mod 2 = 0 then
      summ_evens := summ_evens + a
    else
      summ_odds := summ_odds + a;
  end;
  Writeln('Summ of evens ', summ_evens);
  Writeln('Sum of odds ', summ_odds);
END.

