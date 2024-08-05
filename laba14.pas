program laba14;


uses
  SysUtils, MessageModule;


var
  i, j, k: integer;
     A, C: array[1..3, 1..4] of real;
        b: real;


begin
  ShowGreeting('14');

  ShowMessage('Введите матрицу A: ');
  for i := 1 to 3 do
    for j := 1 to 4 do Read(A[i, j]);
  Writeln;

  ShowMessage('Матрица A:');
  for i := 1 to 3 do
  begin
    for j := 1 to 4 do Write(A[i, j]:3:0, ' ');
    Writeln;
  end;
  Writeln;

  for i := 1 to 3 do
    for j := 1 to 4 do C[i, j] := sin(A[i, j]);

  ShowMessage('Матрица C, полученная из матрицы A по правилу:');
  Writeln('C[i, j] = sin(A[i, j])');
  Writeln;
  for i := 1 to 3 do
  begin
    for j := 1 to 4 do Write(C[i, j]:7:4, ' ');
    Writeln;
  end;
  Writeln;

  k := 0;
  ShowMessage('Элементы матрицы C, которые больше 0.1:');
  Writeln;
  for i := 1 to 3 do
    for j := 1 to 4 do
      if c[i, j] > 0.1 then
                       begin
                        WriteLn('C[', i, ', ', j, '] = ', C[i, j]:4:4);
                        k := k + 1;
                       end;

  Writeln('Кол-во элементов > 0.1: ', k);
  Writeln;

  for i := 1 to 3 do
  begin
    b := A[i, 1];
    A[i, 1] := A[i, 4];
    A[i, 4] := b;
  end;

  ShowMessage('Матрица B, полученная из матрицы A заменой местами 1 и 4 столбца:');
  for i := 1 to 3 do
  begin
    for j := 1 to 4 do Write(A[i, j]:3:0, ' ');
    Writeln;
  end;
end.