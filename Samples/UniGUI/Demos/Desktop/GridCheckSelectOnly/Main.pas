//AllFeatures: Grid,CheckSelectOnly,icon-checkbox-selection
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniDBNavigator, DB,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid;

type
  TMainForm = class(TUniForm)
    dd: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
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
