program array_func;

type
    TArr = array [1..4] of integer;

function ArraySumm(a : TArr) : integer;
var
    i : integer;
begin
    ArraySumm := 0;
    for i := 1 to 4 do
        ArraySumm += a[i];
end;

function ArrayDouble(a : TArr) : TArr;
var
    i : integer;
begin
    for i := 1 to 4 do
        ArrayDouble[i] := a[i] * 2;
end;

var 
    a, b : TArr;
    i : integer;

begin
    for i := 1 to 4 do
        read(a[i]);
    
    Writeln('Sum of a: ', ArraySumm(a));

    b := ArrayDouble(a);
    for i := 1 to 4 do
        write(b[i], ' ');
    Writeln();


end.


    

