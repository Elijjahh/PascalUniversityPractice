program laba8;

uses
  SysUtils, MessageModule;

type
  MON = (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);

const
  EnglishMonthNames: array[MON] of string = ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
   RussenMonthNames: array[MON] of string = ('Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь');

var
  input, monthNumber: Integer;
            monthStr: string;
               month: MON;

begin
  ShowGreeting('8');

  repeat
    ShowMessage('Выберите способ ввода месяца: ');
    Writeln('1 - Цифрой');
    Writeln('2 - Английскими буквами');
    Writeln('3 - Русскими буквами');
    Write('Способ: ');
    Readln(input);
    Writeln;

    case input of
      1:
        begin
            ShowMessage('Введите номер месяца: ');
            readln(MonthNumber);
            case MonthNumber of
                1..6, 9..12: Writeln('Ученье – свет!');
                       7, 8: Writeln('Ура! Каникулы!');
                       else Writeln('В году 12 месяцев! Пожалуйста, введите корректный номер месяца.');
            end;
            Writeln;
            Continue;
        end;

      2:
          begin
            ShowMessage('Введите название месяца на английском: ');
            readln(monthStr);
            for month := Low(MON) to High(MON) do if SameText(monthStr, EnglishMonthNames[month]) then Break;
                                                  if month > High(MON) then
                                                                       begin
                                                                         Writeln('Пожалуйста, введите корректное название месяца.');
                                                                         Continue;
                                                                       end;
          end;

      3:
        begin
            ShowMessage('Введите название месяца на русском: ');
            readln(monthStr);
            for month := Low(MON) to High(MON) do if SameText(monthStr, RussenMonthNames[month]) then Break;
                                                if month > High(MON) then
                                                                     begin
                                                                       Writeln('Пожалуйста, введите корректное название месяца.');
                                                                       Continue;
                                                                     end;
        end;
    else
      ShowMessage('Некорректный выбор. Попробуйте снова.');
      Writeln;
      Continue;
    end;


    case month of Jul, Aug: Writeln('Ура! Каникулы!');
                        else Writeln('Ученье – свет!');
    end;
    Writeln;

    ShowMessage('Желаете продолжить? (1 - да, 0 - нет)');
    Write('Ответ: ');
    Readln(input);
    Writeln;
    until input = 0;
end.
