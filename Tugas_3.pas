program Perkalian_Matriks;
uses crt;
type larik = array[1..10,1..10] of integer;
var matriks1, matriks2, hasil: larik;
    i, j, k, jumlah, input1, input2, input3, input4, input5, input6, input7, input8: integer;
    
begin
    clrscr;
    write('Masukkan nilai matriks 1 (1,1): '); read(input1);
    write('Masukkan nilai matriks 1 (1,2): '); read(input2);
    write('Masukkan nilai matriks 1 (2,1): '); read(input3);
    write('Masukkan nilai matriks 1 (2,2): '); read(input4);
    write('Masukkan nilai matriks 2 (1,1): '); read(input5);
    write('Masukkan nilai matriks 2 (1,2): '); read(input6);
    write('Masukkan nilai matriks 2 (2,1): '); read(input7);
    write('Masukkan nilai matriks 2 (2,2): '); read(input8);

    matriks1[1,1] := input1;
    matriks1[1,2] := input2;
    matriks1[2,1] := input3;
    matriks1[2,2] := input4;
    matriks2[1,1] := input5;
    matriks2[1,2] := input6;
    matriks2[2,1] := input7;
    matriks2[2,2] := input8;
    
    writeln;
    writeln('Program Perkalian Matriks');
    writeln;
    writeln('Matriks Pertama');

    for i:=1 to 2 do
    begin
        for j:=1 to 2 do
        begin
            write(matriks1[i,j],' ');
        end;
        writeln;
    end;

    writeln('Matriks Kedua');
    for i:=1 to 2 do
    begin
        for j:=1 to 2 do
        begin
            write(matriks2[i,j],' ');
        end;
        writeln;
    end;

    jumlah:=0;
    for i:=1 to 2 do
    begin
        for j:=1 to 2 do
        begin
            for k:=1 to 2 do
            begin
                jumlah:=jumlah+matriks1[i][k]*matriks2[k][j];
            end;
            hasil[i,j]:=jumlah;
            jumlah:=0;
        end;
    end;

    writeln('Hasil Perkalian');
    for i:=1 to 2 do
    begin
        for j:=1 to 2 do
        begin
            write(hasil[i,j],' ');
        end;
        writeln;
    end;
end.
