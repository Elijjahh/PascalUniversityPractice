unit MessageModule;

interface

procedure ShowGreeting(const number: string);
procedure ShowMessage(const Msg: string);

implementation

procedure ShowGreeting(const number: string);
begin
  Writeln('***********************');
  Writeln('Контрольная работа, задание №', number);
  Writeln('Выполнил Белов Илья');
  Writeln;
end;

procedure ShowMessage(const Msg: string);
begin
  Writeln('***********************');
  Writeln(Msg);
end;
end.