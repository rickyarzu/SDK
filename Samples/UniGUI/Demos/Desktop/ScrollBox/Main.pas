//AllFeatures: ScrollBox,Basic Demo,icon-grid-infinite-scroll
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniScrollBox, uniButton, uniBasicGrid, uniDBGrid, uniBitBtn;

type
  TMainForm = class(TUniForm)
    UniScrollBox1: TUniScrollBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniScrollBox2: TUniScrollBox;
    UniBitBtn1: TUniBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
