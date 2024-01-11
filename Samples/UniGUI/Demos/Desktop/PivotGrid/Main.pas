//AllFeatures: Pivot Grid,Basic Demo,icon-datachanges-pivot-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, UniDBPivotGrid, DB, DBClient, uniLabel;

type
  TMainForm = class(TUniForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniDBPivotGrid1: TUniDBPivotGrid;
    UniLabel1: TUniLabel;
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
