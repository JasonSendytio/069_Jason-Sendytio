program Shapen_Universe;
uses crt;
type bangun = record
    shp :string;
    sze :integer;
    opq :integer;
    plt :string[2];
    nme :string;
    voy :string[2];
    ubq :integer;
    ubm :string[2];
end;
function luas(r:string;x,y:integer) :integer;
        begin
        if x>(y*2) then begin
        if (r='square') then
            luas := 4*x*y - 4*y*y
        else if (r='triangle') then
            luas := (4*x*y - 4*y*y) div 2
        else if (r='circle') then begin
            x := x div 2;
            luas :=((2*x*y - y*y)*22) div 7;
            end;
        end
        else begin
        if (r='square') then
            luas := x*x
        else if (r='triangle') then
            luas := (x*x) div 2
        else if (r='circle') then begin
            x := x div 2;
            luas :=((x*x)*22) div 7;
            end;
        end;    
end;
procedure siku(r:string;x,y:integer;z,v:string;q:integer;e:string); 
var
a,b,w:integer;
s:integer;
begin
if r='triangle' then w :=1;
if r='square'  then w :=x;
for a:=1 to x do begin
    write('    ');
    for s:=1 to q do begin
        write(e);
    end;

    for b:=1 to w do begin
    if(a<=y) or (b<=y) or (a>x-y) or (b>w-y) then
        write(z)
    else begin
        if(b>w-y-q) then write(e)
        else 
        write(v)
        end;
    end;
    if r='triangle' then w :=w+1;
    writeln;
    end;
end;
procedure sirkol(x,y:integer;z,v:string;q:integer;w:string);
var
f,h,k,l,m,n:integer;
s,t,u:integer;
g,i,j :longint;
o :array[0..100] of integer;
begin
    f :=x div 2;
    j :=25;
    k :=1;
    m :=0;
    g :=sqr(f);
    
    for h :=f-1 downto 0 do
        begin
        i := (g - sqr(h)) *100;
        j :=j ; k:=k; 
        while (i>=j) do
            begin
            j := j + k*200;
            k := k+1;
            end;
            write('    ');
            for l :=0 to f-k+q do begin
                if l>f-k then write(w)
                else write('  ');
                end;
            for l :=1 to k-m-1 do
                write(z);
            for l:=1 to m*2 do
                begin
                if l>m*2-q then
                    write(w)
                else
                write(v);
                end;
            for l :=1 to k-m-1 do
                write(z);
            {
            for s:=1 to q do //qw
                write(w);
            }
            o[h] :=m;
            writeln;
            m :=k-1-y;
            if(h>f-y) then
                m:=0;
        j :=25;
        k :=1;
    end;
    j :=25;
    k :=1;
    g :=sqr(f);
    for h :=0 to f-1 do
        begin
        m :=o[h];
        i := (g - sqr(h)) *100;
        j :=j ; k:=k; 
        while (i>=j) do
            begin
            j := j + k*200;
            k := k+1;
            end;
        write('    ');
        for l :=0 to f-k+q do begin
            if l>f-k then write(w)
            else write('  ');
            end;
        for l :=1 to k-m-1 do
            write(z); 
        for l:=1 to m*2 do
            begin
                if l>m*2-q then
                    write(w)
                else
                write(v);
                end;
        for l :=1 to k-m-1 do
                write(z);
        {
        for s:=1 to q do
            write(w); //qw
        }
            k :=1;
            j :=25;
        writeln;
    end;
    end;
var
gon : array[1..5] of bangun;
a,b,c,d:integer;
x,y:string;
begin
clrscr;
write('Insert number of shape(s)[1..5]:  ');
readln(b);
for a:=1 to b do
    begin
        with gon[a] do
        begin
            write('Insert Circumshapens  >> ');readln(shp);
            write('Insert Parameteristic >> ');readln(sze);
            write('Insert Opaqueability  >> ');readln(opq);
            write('Insert Moleculettess  >> ');readln(plt);
            write('Insert Envulvoidment  >> ');readln(voy);
            write('Insert Ubiquitousness >> ');readln(ubq);
            write('Insert Ubiquittorium  >> ');readln(ubm);
            write('Insert Traceback_Tag  >> ');readln(nme);
            plt := plt+plt;
            voy := voy+'  ';
            ubm := ubm+ubm;
            case sze of
            1..60 : sze:= sze;
            else
            sze :=60;
            end;
        end;
          writeln('------------------------------------');
    end;
repeat
writeln('Insert Traceback_Tag to summon the designated shape = ');readln(x);
for d :=1 to b do
    begin
        with gon[d] do
        if (x=nme) then
            begin
            writeln('Successfully found the Traceback_Tag , summoning...');
                with gon[d] do begin
                writeln('Inbound! a shape with an area of ',luas(shp,sze,opq));
                if (shp='triangle') or (shp='square') then
                siku(shp,sze,opq,plt,voy,ubq,ubm)
                else
                sirkol(sze,opq,plt,voy,ubq,ubm);
                end;
            writeln;
            writeln('[ Object successfully summoned ]');
            writeln;
            end
        else begin
            continue;
            end;
    end;  
until (x='');
end.

{
with gon[1] do begin
for a:=1 to sze do begin
    for b:=1 to sze do begin
    if(a<=opq) or (b<=opq) or (a>sze-opq) or (b>sze-opq) then
        write(plt)
    else write(' ');
    end;
    writeln;
    end;
end;
}
{
with gon[1] do begin
for a:=1 to sze do begin
    for b:=1 to a do begin
    if(a<=opq) or (b<=opq) or (a>sze-opq) or (b>a-opq) then
        write(plt)
    else write(' ');
    end;
    writeln;
    end;
end;
}