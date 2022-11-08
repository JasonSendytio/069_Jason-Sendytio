program Triangle;
uses crt;
var tri_num, start_num, temp_num1, temp_num2: integer;

begin
    clrscr;
    write('Input a number: '); read(tri_num);
    writeln;
    start_num := 1;

    for start_num := start_num to tri_num do
        begin
            if start_num mod 2 = 0 then
                for temp_num1 := 1 to start_num do
                    begin
                        write(start_num,' ');
                    end
            else
                for temp_num2 := 1 to start_num do
                    begin
                        write('* ');
                    end;
            writeln;
        end;
end.
