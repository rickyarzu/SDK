//AllFeatures: FastReport,FastReport - MultiReport,icon-framed-panels
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniCheckBox, uniButton,
  uniDBComboBox, uniDBLookupComboBox, uniGUIBaseClasses, uniMultiItem,
  uniComboBox, uniBasicGrid, uniDBGrid, Unit1, DB;

type
  TMainForm = class(TUniForm)
    UniComboBox1: TUniComboBox;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniButton1: TUniButton;
    DataSource1: TDataSource;
    procedure UniComboBox1Change(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    TableNm:string;
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
  if (Trim(UniComboBox1.Text)<>'') then
  begin
    UniComboBox1.Color := clWindow;
    if (Trim(UniDBLookupComboBox1.Text)<>'') then
    begin
      UniDBLookupComboBox1.Color := clWindow;
      UniForm1.ID := UniDBLookupComboBox1.Text;
      UniForm1.RepName := TableNm;
      UniForm1.Show();
    end
    else
    begin
      UniDBLookupComboBox1.Color := clYellow;
      UniDBLookupComboBox1.SetFocus;
    end;
  end
  else
  begin
    UniComboBox1.Color := clYellow;
    UniComboBox1.SetFocus;
  end;
end;

procedure TMainForm.UniComboBox1Change(Sender: TObject);
var
  SQL: string;
begin
  UniMainModule.ADOQuery1.Close;

  UniDBLookupComboBox1.KeyValue := Null;

  if UniComboBox1.ItemIndex = 0 then
  begin
    SQL := 'SELECT * FROM Customers';
    UniDBLookupComboBox1.KeyField := 'CustomerID';
    UniDBLookupComboBox1.ListField := 'CustomerID';
    TableNm := 'Customer';
  end
  else if UniComboBox1.ItemIndex = 1 then
  begin
    SQL := 'SELECT * FROM Employees';
    UniDBLookupComboBox1.KeyField := 'EmployeeID';
    UniDBLookupComboBox1.ListField := 'EmployeeID';
    TableNm := 'Employee';
  end
  else if UniComboBox1.ItemIndex = 2 then
  begin
    SQL := 'SELECT * FROM Products';
    UniDBLookupComboBox1.KeyField := 'ProductID';
    UniDBLookupComboBox1.ListField := 'ProductID';
    TableNm := 'Product';
  end
  else if UniComboBox1.ItemIndex = 3 then
  begin
    SQL := 'SELECT * FROM Suppliers';
    UniDBLookupComboBox1.KeyField := 'SupplierID';
    UniDBLookupComboBox1.ListField := 'SupplierID';
    TableNm := 'Supplier';
  end
  else if UniComboBox1.ItemIndex = 4 then
  begin
    SQL := 'SELECT * FROM Orders';
    UniDBLookupComboBox1.KeyField := 'OrderID';
    UniDBLookupComboBox1.ListField := 'OrderID';
    TableNm := 'Order';
  end;

  UniMainModule.ADOQuery1.SQL.Clear;
  UniMainModule.ADOQuery1.SQL.Add(SQL);
  UniMainModule.ADOQuery1.Open;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
