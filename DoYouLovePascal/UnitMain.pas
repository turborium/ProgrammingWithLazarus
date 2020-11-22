unit UnitMain;

{$mode delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    Disp: TPaintBox;
    Timer: TTimer;
    procedure DispClick(Sender: TObject);
    procedure DispPaint(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    TextAngle: Integer;
  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

uses
  Math;

{ TFormMain }

procedure TFormMain.DispPaint(Sender: TObject);
const
  Text = '   ♥ ObjectPascal';
  SpectrumColors: array [0..6] of TColor = (clBlue, clRed, clFuchsia, clLime, clAqua, clYellow, clWhite);
var
  I: Integer;
begin
  Self.Disp.Canvas.Font.Size := Ceil(0.038 * Min(Self.Disp.Width, Self.Disp.Height));
  Self.Disp.Canvas.Brush.Style := bsClear;

  for I := 0 to High(SpectrumColors) do
  begin
    Self.Disp.Canvas.Font.Color := SpectrumColors[I];
    Self.Disp.Canvas.Font.Orientation := Self.TextAngle + Trunc(I * 3600 / Length(SpectrumColors));

    Self.Disp.Canvas.TextOut(
      Self.Disp.Width div 2,
      Self.Disp.Height div 2,
      Text
    );
  end;
end;

procedure TFormMain.DispClick(Sender: TObject);
begin
  ShowMessage('Do you love ObjectPascal?');
end;

procedure TFormMain.TimerTimer(Sender: TObject);
begin
  Self.TextAngle := Self.TextAngle + 15;
  Self.Disp.Invalidate;
end;

end.

