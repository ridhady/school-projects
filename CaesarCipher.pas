var
	s : string;
	n : integer;
	i : integer;
	
function tambah(a:char;b : integer):char;
var
	result : integer;
	
begin
	result := ord(a) + b;
	if (result > 122) then
		result := result - 26;
	tambah := chr(result);
end;

begin
	readln(s);
	readln(n);
	for i:= 1 to length(s) do begin
		s[i] := tambah(s[i],n);
	end;
	writeln(s);
end.