{
  Найти максимальную сумму элементов, 
  остоящих друг от друга на 3 позиции в потоке.
}

PROCEDURE Naive;
{ Наивное решение: TIME: O(n), MEMORY: O(n) }
CONST
    SIZE = 8;
    DELTA = 3;
VAR
    a: array[1..SIZE] of Integer = (15,6,3,7,2,8,9,65);
    i: Integer;
    sum : Integer;
    max : Integer = -1;
BEGIN
  {
    For i := 1 to 8 do begin
        readln(a[i]);
    end;
  }
    
    For i := 1 to SIZE - DELTA do begin
        sum := a[i] + a[i + DELTA];
        if sum > max then max := sum;
    end;
    
    WriteLn(max);
END;

Procedure ByRingBuf;
{ 
  input: поток натуральных чисел, оканчивающийся 0
  output: список сумм элементов, отстоящих на DELTA 
}
    Const
        DELTA = 3;
    VAR
        ring_buf : array[0..DELTA - 1] of Integer;  {!!!От нуля}
        buf_ix : Integer;  {Указатель текущего значения}
        cur_val : Integer = -1;
        i : Integer;
    BEGIN
        { ВНИМАНИЕ! КОЛЬЦЕВОЙ БУФЕР ОТ НУЛЯ!!! }
        For i := 0 to DELTA - 1 do begin 
            read(ring_buf[i]);
        end;
        
        buf_ix := 0;
        
        While cur_val <> 0 do begin
            Read(cur_val);
            If cur_val <> 0 then begin
                Write(ring_buf[buf_ix] + cur_val, ' ');
                ring_buf[buf_ix] := cur_val;
                buf_ix := (buf_ix + 1) mod DELTA; {!!!ЗАКОЛЬЦОВКА}  
            end;
        end;
        WriteLn;
    END;
        
BEGIN { MAIN }
    {Naive;}
    ByRingBuf;    
END.