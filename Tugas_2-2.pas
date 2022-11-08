program Diamond;
uses crt;
var input_num, start_num1, start_num2, temp_num1, temp_num2: integer;

begin
    clrscr;
    write('Input a number: '); read(input_num);
    writeln;
    start_num1 := 1;
    start_num2 := 2;

    for start_num1 := start_num1 to input_num do
        begin
            for temp_num1 := input_num-1 downto start_num1 do
                write(' ');
            
            for temp_num1 := 1 to start_num1 do
                write('* ');
            
            writeln;
        end;
    
    for start_num2 := start_num2 to input_num do
        begin
            for temp_num2 := 2 to start_num2  do
                write(' ');
            
            for temp_num2 := input_num downto start_num2 do
                write('* ');
            
            writeln;
        end;
end.
