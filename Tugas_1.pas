program Menu_Makanan;
uses crt;
label makanan_tidak_terpilih;
label makanan_telah_terpilih;
var pilihan_makanan: integer;
    biaya_makanan: extended;
    makanan_terpilih: string;
begin
    clrscr;
    writeln('Selamat datang di cafe DP, silahkan memilih makanan yang diinginkan dari menu berikut.');
    writeln('----------Menu Makanan----------');
    writeln('1. Nasi Goreng         Rp10.000');
    writeln('2. Mie Goreng          Rp8.000');
    writeln('3. Nasi Ayam Geprek    Rp12.000');
    writeln('4. Nasi Soto           Rp9.000');
    writeln('5. Mie Pangsit         Rp10.000');
    write('Menu makanan yang dipilih (dengan nomor menu): '); read(pilihan_makanan);

    case pilihan_makanan of
        1: makanan_terpilih := 'Nasi Goreng';       
        2: makanan_terpilih := 'Mie Goreng';           
        3: makanan_terpilih := 'Nasi Ayam Geprek';           
        4: makanan_terpilih := 'Nasi Soto';           
        5: makanan_terpilih := 'Mie Pangsit';
    else
        goto makanan_tidak_terpilih;
    end;

    case pilihan_makanan of
        1: biaya_makanan := 10.000;           
        2: biaya_makanan := 8.000;
        3: biaya_makanan := 12.000;       
        4: biaya_makanan := 9.000;        
        5: biaya_makanan := 10.000;
    end;

    writeln;
    write('Menu makanan yang dipilih adalah ',makanan_terpilih,' dengan harga Rp',biaya_makanan:0:3);
    goto makanan_telah_terpilih;

    makanan_tidak_terpilih:
    writeln;
    write('Mohon maaf, nomor makanan yang dipilih tidak terdaftar dalam menu Cafe DP.');

    makanan_telah_terpilih:
    writeln;

end.
