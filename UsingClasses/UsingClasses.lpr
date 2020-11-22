program UsingClasses;

{$mode delphi}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils,
  TestClass;

procedure Test;
var
  Rect: TRect;
begin
  Rect := TRect.Create;
  try
    Rect.Width := 20;
    Rect.Height := 5;

    Writeln('Width = ', Rect.Width);
    Writeln('Height = ', Rect.Height);
    Writeln('Area = ', Rect.CalcArea);

  finally
    Rect.Free;
  end;

  Readln;
end;

begin
  try
    Test;
  except
    on E: Exception do
      Writeln('*** ', E.ToString, ' ***');
  end;
end.

