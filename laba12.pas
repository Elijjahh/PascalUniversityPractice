program laba12;

uses
  SysUtils,
  MessageModule;

var
  sumSecondRow, sumEven, i, j, m, n : integer;
                         A: array [0..20,0..20] of integer;
                         B: array [0..20,0..20] of integer;
                         C: array [0..20,0..20] of integer;

begin
  ShowGreeting('12');
  n := 3;
  m := 4;
  Writeln('***********************');
  Writeln('Введите матрицу А: ');
  for i := 1 to n do
    for j := 1 to m do Read(A[i,j]);

  sumSecondRow := 0;
  sumEven := 0;
  for i := 1 to n do
    for j := 1 to m do
    begin
      if i = 2 then sumSecondRow := sumSecondRow + A[i,j];
      B[i,j]:= A[i,j] + 1;

      if A[i,j] mod 2 = 0 then sumEven := sumEven + A[i,j];
      C[1,j]:= A[3,j];
      C[2,j]:= A[2,j] + 10;
      C[3,j]:= 0 - A[1,j];
    end;
  Writeln;

  ShowMessage('Матрица A ');
  for i:= 1 to n do
  begin
    for j:= 1 to m do Write(A[i,j]:3);
    Writeln;
  end;
  Writeln;

  Writeln('Сумма элементов 2-ой строки матрицы = ', sumSecondRow);
  Writeln('Сумма всех чётных элементов матрицы = ', sumEven);
  Writeln;

  ShowMessage('Матрица B, построенная из исходной по правилу');
  Writeln('A[i, j] + 1');
  Writeln;
  for i:= 1 to n do
  begin
    for j:= 1 to m do Write(B[i,j]:3);
    Writeln;
  end;
  Writeln;

  ShowMessage('Матрица C, построенная из исходной по правилу');
  Writeln('C[1, j]:= A[3, j], C[2, j]:= A[2, j] + 10, C[3, j]:= -A[1, j]');
  Writeln;
  for i:= 1 to n do
  begin
    for j:= 1 to m do Write(C[i,j]:3);
    Writeln;
  end;
end.