program TukangSulap; 

type
	Arr = Array [1..1000] of longint; 

var
	N,Q,i,x,y : longint;
	A,B : Arr;  P, Q1,Q2: char;

procedure Tukar (var xl , yl : longint);
var
	temp : longint;

begin
	temp := yl;
	yl := xl;
	xl := temp;
end;

begin
	readln (N);
	for i := 1 to N do begin
		read (A[i]);
	end;
	for i := 1 to N do begin
		read (B[i]);
	end;
	readln (Q);
	for i := 1 to Q do begin
		read (P,x);
		read (Q1);
			if ( Q1 = ' ' ) then read(Q2);
		readln (y);
		if (P = 'A' ) and (Q2 = 'A') then begin
			Tukar (A[x] , A[y]);
		end else if (P = 'A' ) and (Q2 = 'B') then begin
			Tukar (A[x] , B[y]);
		end else if (P = 'B' ) and (Q2 = 'A') then begin
			Tukar (B[x] , A[y]);
		end else if (P = 'B' ) and (Q2 = 'B') then begin
			Tukar (B[x] , B[y]);
		end;
	end;
	for i := 1 to N do begin
		if (i <> N ) then begin
			write (A[i], ' ');
		end else begin
			write (A[i]);
		end;
	end;
	writeln ();
	for i := 1 to N do begin
		if (i <> N ) then begin
			write (B[i], ' ');
		end else begin
			write (B[i]);
		end;
	end;
	writeln();
end.