unit uFrmTelephone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  uniButton, uniBitBtn, uniEdit, uniGUIBaseClasses, uniRadioButton,
  uniRadioGroup, uniCheckBox, uniLabel;

type
  TfrmTelephone = class(TUniFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TfrmTelephone)

end.
