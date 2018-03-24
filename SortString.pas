//16517217/Mohammad Ridwan Hady Arifin
{Program menerima input sebuah string, kemudian mengeluarkan output berupa string baru dengan elemen - elemen yang sudah diurutkan mulai a hingga z}
{KAMUS}
var
	n : string;
	
procedure swap(var a, b: char);
var
    t: char;
begin
    t := a;
    a := b;
    b := t;
end;

function diam(s: string): string;
var
    len, i: longint;
begin
    diam := s;
    len := length(s);
    for i := 1 to len do begin
        swap(diam[i], diam[len - i + 1]);
    end;
end;

procedure cari(s, t: string);
var
    i, j: longint;
    ls, lt: longint;
    benar: boolean;
begin
    ls := length(s);
    lt := length(t);
    for i := 1 to ls-lt+1 do begin
        benar := true;
		j := 1;
		while ((j < lt) and (benar)) do begin
            if (s[i+j-1] <> t[j]) then begin
                benar := false;
            end;
			j := j + 1;
        end;

        if (benar) then begin
            write(i);
        end;
    end;
end;
function ubah(s: string): longint;
var
    i, p, hasil: longint;
begin
    p := 1;
    hasil := 0;

    for i := 1 to length(s) do begin
        hasil := hasil + p * (ord(s[i]) - ord('0'));
        p := p * 10;
    end;

    ubah := hasil;
end;
function urut(s: string): string;
var
    arr: array['a'..'z'] of longint;
    i: longint;
    c: char;
begin
    for c := 'a' to 'z' do begin
        arr[c] := 0;
    end;

    for i := 1 to length(s) do begin
        arr[s[i]] := arr[s[i]] + 1;
    end;

    urut := '';
    for c := 'a' to 'z' do begin
        for i := 1 to arr[c] do begin
            urut := urut + c;
        end;
    end;
end;

begin
	readln(n);
	writeln(urut(n));
end.