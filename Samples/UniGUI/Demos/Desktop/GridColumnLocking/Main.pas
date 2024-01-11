//AllFeatures: Grid,Column Locking,icon-locking-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, DB,
  DBClient, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
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
  RegisterMainFormClass(TMainForm);

end.
