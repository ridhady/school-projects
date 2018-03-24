//16517217/Mohammad Ridwan Hady Arifin
program integral;
{program menerima 3 buah input yaitu batas bawah, batas atas dan delta,program kemudian menghitung luas yang dibuat oleh fungsi yang ada pada program}
{KAMUS}
var
	a,b,d,i,hasil : real;
	
{berikut adalah salah satu contoh fungsi yang ada, untuk menghitung kurva yang lain, cukup ganti nilai pada fungsi dibawah ini sesuai keinginan}
function y ( x : real):real;
begin
 y := x*x*x + x + 1;
end;
function hitung (a,b,c : real):real;
begin
hitung := (((a+b)/2)*c);
end;
{ALGORITMA}
begin
	readln(a,b,d);
	hasil := 0;
	i:=a;
	while (i < b) do begin
		hasil := hasil + (hitung(y(i),y(i+d),d));
		i := i + d;
	end;
	writeln(hasil:0:3);
end.