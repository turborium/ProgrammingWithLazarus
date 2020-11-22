unit UnitSleep;

{$mode delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormSleep }

  TFormSleep = class(TForm)
    ButtonTest: TButton;
    ButtonSleep: TButton;
    procedure ButtonSleepClick(Sender: TObject);
  private

  public

  end;

var
  FormSleep: TFormSleep;

implementation

{$R *.lfm}

{ TFormSleep }

procedure TFormSleep.ButtonSleepClick(Sender: TObject);
begin
  Sleep(60000);
end;

end.

