//AllFeatures: Grid,Grouping,icon-grouped-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, DB, DBClient, uniButton, uniEdit, uniDBEdit, uniMultiItem,
  uniComboBox;

type
  TMainForm = class(TUniForm)
    ClientDataSet1: TClientDataSet;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniButton1: TUniButton;
    UniComboBox1: TUniComboBox;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniButton1Click(Sender: TObject);
    procedure UniComboBox1Change(Sender: TObject);
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

procedure TMainForm.UniComboBox1Change(Sender: TObject);
begin
  UniDBGrid1.Grouping.FieldName := UniComboBox1.Text;
end;

procedure TMainForm.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  ClientDataSet1.IndexName := Column.FieldName + 'Index';
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ClientDataSet1.FieldDefs.Count -1  do
    ClientDataSet1.IndexDefs.Add(ClientDataSet1.FieldDefs[I].Name + 'Index', ClientDataSet1.FieldDefs[I].Name, []);

  UniComboBox1.ItemIndex := 3;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
