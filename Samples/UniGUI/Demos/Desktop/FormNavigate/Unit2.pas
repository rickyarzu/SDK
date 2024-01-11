unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniSpinEdit, uniDateTimePicker, uniEdit,
  uniGUIBaseClasses, uniPanel;

type
  TUniForm2 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniSpinEdit1: TUniSpinEdit;
    UniPanel2: TUniPanel;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;
    UniEdit8: TUniEdit;
    UniEdit9: TUniEdit;
    UniPanel3: TUniPanel;
    UniEdit10: TUniEdit;
    UniEdit11: TUniEdit;
    UniEdit12: TUniEdit;
    UniEdit13: TUniEdit;
    UniLabel1: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm2: TUniForm2;

implementation

{$R *.dfm}

uses
  uniGUIApplication, MainModule;

function UniForm2: TUniForm2;
begin
  Result := TUniForm2(UniMainModule.GetFormInstance(TUniForm2));
end;

end.
