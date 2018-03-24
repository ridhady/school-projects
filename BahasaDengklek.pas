program BahasaDengklek;
{Program menerima sebuah string, kemudian program akan mengubah tiap elemennya jika dalam kapital menjadi huruf kecil
dan sebaliknya}

{Kamus}
var
	s : string;
	i : integer;
	
function tambah(a:char):char;
var
	result : integer;
	
begin
	if ((ord(a) >= 97) and (ord(a) <= 122)) then
		result := ord(a) - 32
	else if ((ord(a) >= 65) and (ord(a) <= 90)) then
		result := ord(a) +32;
	tambah := chr(result);
end;
{Algoritma}
begin
	readln(s);
	for i:= 1 to length(s) do begin
		s[i] := tambah(s[i]);
	end;
	writeln(s);
end.