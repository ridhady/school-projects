//16517217/Mohammad Ridwan Hady A
program hapusString;

{program menerima masukan 2 buah string yang dipisahkan oleh spasi, program kemudian akan menghapus tiap string kedua yang ada pada string pertama}
{Kamus}
var
	S,T,N,b: string;
	x,y : integer;
	
{Algoritma}
begin
	readln(N);
	S := N;
	T := N;
	b := ' ';
	x := pos(b,N);
	y := length(N);
	delete(S, x, (y-x+1));
	delete(T, 1, x);
	while (pos(T,S) > 0) do begin
		delete(s,pos(T,S),length(T));
	end;
	writeln(S);
end.