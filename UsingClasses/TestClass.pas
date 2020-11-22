unit TestClass;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type

  { TRect }

  TRect = class
  private
    FHeight: Integer;
    FWidth: Integer;
    procedure SetHeight(AValue: Integer);
    procedure SetWidth(AValue: Integer);
  public
    property Width: Integer read FWidth write SetWidth;
    property Height: Integer read FHeight write SetHeight;
    function CalcArea: Integer;
  end;

implementation

{ TRect }

procedure TRect.SetHeight(AValue: Integer);
begin
  if AValue > 0 then
    Self.FHeight := AValue
  else
    Self.FHeight := 0;
end;

procedure TRect.SetWidth(AValue: Integer);
begin
  if AValue > 0 then
    Self.FWidth := AValue
  else
    Self.FWidth := 0;
end;

function TRect.CalcArea: Integer;
begin
  Result := Self.Width * Self.Height;
end;

end.

