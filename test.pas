program test;

uses
  MessageModule;

var
  text: string;
  count, i: integer;
  outputFile: TextFile;
  ch: char;


begin
  ShowGreeting('1');

  ShowMessage('Введите последовательность символов:');
  Readln(text);

  Assign(outputFile, 'output.txt');
  Rewrite(outputFile);
  Writeln(outputFile, 'Символы введенные с клавиатуры:');
  
  Writeln;
  ShowMessage('Символы введенные с клавиатуры:');

  count := 0;
  for i := 1 to Length(text) do
  begin
    count := count + 1;
    if count mod 3 = 0 then
                       begin
                         ch := UpCase(text[i]);
                         Write(outputFile, ch);
                         Write(outputFile, ' ')
                       end;
    Writeln(text[i]);
  end;

  Close(outputFile);
end.
