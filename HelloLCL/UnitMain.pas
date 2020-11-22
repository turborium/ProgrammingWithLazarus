unit UnitMain;

{$mode delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    ButtonOk: TButton;
    EditName: TEdit;
    LabelName: TLabel;
    procedure ButtonOkClick(Sender: TObject);
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.ButtonOkClick(Sender: TObject);
var
  Name: string;
begin
  Name := Self.EditName.Text;

  ShowMessage('Hello ' + Name);
end;

end.

