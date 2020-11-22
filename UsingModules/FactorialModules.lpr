program FactorialModules;

{$mode delphi}

uses Calc;

var
  N, Res: Integer;
begin
  Writeln('Calc N!');
  Writeln('N?');
  Readln(N);

  Res := Fact(N);

  Writeln('N! = ', Res);
  Readln;
end.


