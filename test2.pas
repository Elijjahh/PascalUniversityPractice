program test2;


uses
  SysUtils, MessageModule;


var
  i, j: integer;
     A: array[1..2, 1..4] of real;
     b: real;


begin
  ShowGreeting('2');

  ShowMessage('Введите матрицу A: ');
  for i := 1 to 2 do
    for j := 1 to 4 do Read(A[i, j]);
  Writeln;

  for i := 1 to 2 do
  begin
    b := A[i, 1];
    A[i, 1] := A[i, 3];
    A[i, 3] := b;
  end;

  ShowMessage('Матрица B, полученная из матрицы A заменой местами 1 и 3 столбца:');
  for i := 1 to 2 do
  begin
    for j := 1 to 4 do Write(A[i, j]:3:0, ' ');
    Writeln;
  end;
end.