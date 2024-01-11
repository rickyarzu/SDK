//AllFeatures: DBNavigator,DBNavigator - Custom Icons,icon-navigation-tabs
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Datasnap.DBClient,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniDBNavigator, uniImageList;

type
  TMainForm = class(TUniForm)
    UniNativeImageList1: TUniNativeImageList;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
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
