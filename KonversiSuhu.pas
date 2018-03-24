//16517217/Mohammad Ridwan Hady Arifin
program konversisuhu;

{program menerima masukan berupa sebuah bilangan yang merepresentasikan suhu dan sebuah besaran dari suhu tersebut
kemudian program juga menerima sebuah masukan kedua berupa faktor konversi antara F, R, C atau K,
program akan menghitung nilai suhu setara dalam faktor konversi yang lain}

{Mini Program Konversi}
procedure celsius(var a:real; b: char);
begin
	case b of
	'R' : begin a := (4*a/5); writeln(a:0:2); end;
	'F' : begin a := ((9*a/5)+32);writeln(a:0:2); end;
	'K' : begin a := (a+273.15); writeln(a:0:2); end;
	'C' : begin writeln(a); end;
	else writeln('error, faktor konversi tersebut belum ditemukan mas');
	end;
end;

procedure fahrenheit(var a: real; b:char);
begin
	case b of
	'R' : begin a := 4*(a-32)/9; writeln(a:0:2); end;
	'C' : begin a := 5*(a-32)/9; writeln(a:0:2); end;
	'K' : begin a := (5*(a-32)/9) + 273.15; writeln(a:0:2); end;
	'F' : begin writeln(a:0:2); end;
	else writeln('error, faktor konversi tersebut belum ditemukan mas');
	end;
end;

procedure reamur(var a: real; b:char);
begin
	case b of
	'F' : begin a := ((9*a/4)+32); writeln(a:0:2);end;
	'C' : begin a := (5*a/4); writeln(a:0:2); end;
	'K' : begin a := (5*a/4) + 273.15; writeln(a:0:2); end;
	'R' : begin writeln(a:0:2); end;
	else writeln('error, faktor konversi tersebut belum ditemukan mas');
	end;
end;

procedure kelvin(var a: real; b:char);
begin
	if b = 'K' then begin writeln(a:0:2);
	end else begin a := a - 273.15; celsius(a,b);
	end;
end;
{KAMUS}
var
	t : real;
	k : char;
	awal : char;
{ALGORITMA}
begin
	writeln('Masukkan besar suhu');
	readln(t);
	writeln('Masukan satuan dari suhu tersebut');
	readln(awal);
	if ((ord(awal) < 65) or (ord(awal) > 90)) then begin
		writeln('Gunakan huruf kapital, dan hanya "F", "C", "R" , atau "K"');
	end else begin
		writeln('ingin kamu konversi ke dalam bentuk apa?');
		readln(k);
		if ((ord(k) < 65) or (ord(k) > 90)) then begin
			writeln('Gunakan huruf kapital, dan hanya "F", "C", "R" , atau "K"');
		end else begin
			case awal of
				'C' : begin celsius(t,k);; end;
				'F' : begin fahrenheit(t,k); end;
				'R' : begin reamur(t,k); end;
				'K' : begin kelvin(t,k); end;
				else writeln('error, satuan tersebut belum ditemukan mas');
			end;
		end;
	end;	
end.