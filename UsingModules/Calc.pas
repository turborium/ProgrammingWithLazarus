unit Calc;

{$mode delphi}

interface

function Fact(N: Integer): Integer;

implementation

function DoFact(N: Integer): Integer;
var
  I: Integer;
begin
  Result := 1;
  for I := 1 to N do
    Result := Result * I;
end;

function Fact(N: Integer): Integer;
begin
  Result := DoFact(N);
end;

end.

