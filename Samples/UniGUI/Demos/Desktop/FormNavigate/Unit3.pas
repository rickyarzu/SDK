unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniSpinEdit, uniDateTimePicker, uniEdit,
  uniGUIBaseClasses, uniPanel;

type
  TUniForm3 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
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
    UniEdit14: TUniEdit;
    UniEdit15: TUniEdit;
    UniEdit16: TUniEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm3: TUniForm3;

implementation

{$R *.dfm}

uses
  uniGUIApplication, MainModule;

function UniForm3: TUniForm3;
begin
  Result := TUniForm3(UniMainModule.GetFormInstance(TUniForm3));
end;

end.
