program laba9;

uses
  MessageModule;

var
                            extra: array [0..10] of integer;
                              arr: array [1..10,1..10] of integer;
  detMain, detX, detY, detZ, i, j: integer;

begin
  ShowGreeting('9');

  while True do
  begin
    ShowMessage('Введите значения коэффицентов матрицы или CTRL+C для выхода:');
    for i := 1 to 3 do
    begin
      for j := 1 to 3 do Read(arr[i,j]);
      Read(extra[i]);
    end;
    Writeln;

    detMain:= arr[1,1]*arr[2,2]*arr[3,3] + arr[2,1]*arr[3,2]*arr[1,3] + arr[1,2]*arr[2,3]*arr[3,1] - arr[1,3]*arr[2,2]*arr[3,1] - arr[3,2]*arr[2,3]*arr[1,1] - arr[2,1]*arr[1,2]*arr[3,3];
    detX:= extra[1]*arr[2,2]*arr[3,3] + extra[2]*arr[3,2]*arr[1,3] + arr[1,2]*arr[2,3]*extra[3] - arr[1,3]*arr[2,2]*extra[3] - arr[3,2]*arr[2,3]*extra[1] - extra[2]*arr[1,2]*arr[3,3];
    detY:= arr[1,1]*extra[2]*arr[3,3] + arr[2,1]*extra[3]*arr[1,3] + extra[1]*arr[2,3]*arr[3,1] - arr[1,3]*extra[2]*arr[3,1] - extra[3]*arr[2,3]*arr[1,1] - arr[2,1]*extra[1]*arr[3,3];
    detZ:= arr[1,1]*arr[2,2]*extra[3] + arr[2,1]*arr[3,2]*extra[1] + arr[1,2]*extra[2]*arr[3,1] - extra[1]*arr[2,2]*arr[3,1] - arr[3,2]*extra[2]*arr[1,1] - arr[2,1]*arr[1,2]*extra[3];

    if detMain=0 then
                  begin
                    if ((detX <> 0) or (detY <> 0) or (detZ <> 0)) then Writeln('Система несовместна')
                                                                   else Writeln('Бесконечно много решений');
                    Writeln;
                    continue;
                  end;

    
    Writeln('x = ',(detX/detMain):6:3);
    Writeln('y = ',(detY/detMain):6:3);
    Writeln('z = ',(detZ/detMain):6:3);
    Writeln;
  end;
end.