program TemanDekat;

{ Program menerima input bilangan N, kemudian menerima input sebanyak N pasang bilangan x,y,
program akan mengeluarkan nilai terkecil dan terbesar dari jarak 2 titik yang ada} 

type
	Arr = Array [1..1000] of longint;

var
	X , Y : Arr;
	N , D , i, j : longint;
	min, max : longint;
	
function Pangkat(a,b,c : longint):int64;
var
	result : int64;
	i: longint;

begin
	result := 1;
	for i := 1 to c do begin
		result := result*abs(a-b);
	end;
	Pangkat := result;
end; 

function Dekat(a,b,c,d,e : longint):int64;
begin
	Dekat := Pangkat(b,a,e) + Pangkat(d,c,e);
end;

Begin
	readln(N,D);
	for i:= 1 to N do begin
		readln(X[i],Y[i]);
	end;
	min := 2147483647;
	max := -2147483647;
	for i:= 1 to N do begin
		for j:= i+1 to N do begin
			if ((Dekat(X[i],X[j],Y[i],Y[j],D)) < min) then min := Dekat(X[i],X[j],Y[i],Y[j],D);
			if ((Dekat(X[i],X[j],Y[i],Y[j],D)) > max) then max := Dekat(X[i],X[j],Y[i],Y[j],D);
		end;
	end;
	writeln(min,' ',max);
end.