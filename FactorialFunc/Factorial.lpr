program Factorial;

{$mode delphi}

function Fact(N: Integer): Integer;
var
  I: Integer;
begin
  Result := 1;
  for I := 1 to N do
    Result := Result * I;
end;

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

