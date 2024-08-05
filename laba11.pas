program laba11;

uses
  SysUtils,
  MessageModule;

var
    x, y: array [1..100] of real;
       i: integer;
  option: char;

begin
  ShowGreeting('11');

  x[1]:=2;
  for i:= 1 to 12 do
  begin
    x[i+1]:=x[i]+0.2;
    y[i]:=sin(x[i]);
  end;

  while True do
  begin
      ShowMessage('Вычисление значений функции y=sin(x), при 2 < x < 4, шаг: 0,2');
      Writeln('Опции: ');
      Writeln('a - все значения x и sin x');
      Writeln('b - только те x и y, для которых sin(x) < 0,2');
      Writeln('c - только те x и y, для которых 0,2 < sin(x) < 0,6');
      Writeln('d - только те x и y, для которых sin(x) > 0,6');
      Writeln('q - для выхода из программы');
      Writeln;
      Write('Введите опцию: '); Readln(option);
      Writeln;
      if option = 'q' then exit;

      ShowMessage(' x          y');
      case option of char
        ('a'): for i := 1 to 11 do Writeln(x[i]:3:1,'  |',y[i]:10:5);
        ('b'): for i := 1 to 11 do if y[i]<0.2 then Writeln(x[i]:3:1,'  |',y[i]:10:5);
        ('c'): for i := 1 to 11 do if (y[i]>0.2) and (y[i]<0.6) then Writeln(x[i]:3:1,'  |',y[i]:10:5);
        ('d'): for i := 1 to 11 do if (y[i]>0.6) then Writeln(x[i]:3:1,'  |',y[i]:10:5);
      end;
      Writeln;
  end;
end.