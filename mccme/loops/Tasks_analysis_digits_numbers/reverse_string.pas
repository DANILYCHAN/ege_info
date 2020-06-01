function reverse(s : String) : String;
var
    i : Integer;
begin
    reverse := '';
    for i := length(s) downto 1 do begin
        reverse += s[i];
    end;
end;


VAR 
    n : String;
    
BEGIN
    Readln(n);
    Writeln(reverse(n));
END.
