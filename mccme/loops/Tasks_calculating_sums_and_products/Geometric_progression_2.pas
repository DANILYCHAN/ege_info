Program Geometric_progression_2;
VAR
    a, n, k, summ, i : integer;
BEGIN
    Read(a, n);
    k := 1;
    For i := 0 to n do begin
        summ += k;
        k *= a;
    end;
    Writeln(summ);
END.
    