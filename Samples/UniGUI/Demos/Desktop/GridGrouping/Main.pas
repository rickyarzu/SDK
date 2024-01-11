//AllFeatures: Grid,Grouping,icon-grouped-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, DB, DBClient, uniButton, uniEdit, uniDBEdit;

type
  TMainForm = class(TUniForm)
    ClientDataSet1: TClientDataSet;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniButton1: TUniButton;
    UniDBEdit1: TUniDBEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniButton1Click(Sender: TObject);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniDBGrid1.Grouping.Enabled := not UniDBGrid1.Grouping.Enabled;
end;

procedure TMainForm.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'country') then
    ClientDataSet1.IndexName := 'CountryIndex';
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  ClientDataSet1.IndexDefs.Add('CountryIndex', 'country', []);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
