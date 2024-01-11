//AllFeatures: Grid,DBVerticalGrid,icon-toolbar-vertical
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniDBVerticalGrid, DB, DBClient, uniDBNavigator,
  uniSpinEdit, uniPanel;

type
  TMainForm = class(TUniForm)
    UniDBVerticalGrid1: TUniDBVerticalGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    UniDBNavigator1: TUniDBNavigator;
    UniHiddenPanel1: TUniHiddenPanel;
    UniSpinEdit1: TUniSpinEdit;
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
