unit UnitEdit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormEdit }

  TFormEdit = class(TForm)
    ButtonOk: TButton;
    ButtonCancel: TButton;
    Memo: TMemo;
    PanelBottom: TPanel;
  private

  public

  end;

var
  FormEdit: TFormEdit;

implementation

{$R *.lfm}

end.

