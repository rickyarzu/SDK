// DBLookupComboBox = Database
unit DatabaseDBLookupComboBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniDateTimePicker,
  uniPanel, uniMemo, uniLabel, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniBasicGrid, uniDBGrid, uniDBNavigator, MainModule,
  uniGUIBaseClasses;

type
  TUniDatabaseDBLookupComboBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    UniMemo1: TUniMemo;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniHiddenPanel1: TUniHiddenPanel;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    UniDBGrid3: TUniDBGrid;
    UniHiddenPanel2: TUniHiddenPanel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    UniHiddenPanel3: TUniHiddenPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDateTimePicker1: TUniDateTimePicker;
    ClientDataSet2: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1OrderNo: TFloatField;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1SaleDate: TDateTimeField;
    ClientDataSet1ShipDate: TDateTimeField;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1ShipToContact: TStringField;
    ClientDataSet1ShipToAddr1: TStringField;
    ClientDataSet1ShipToAddr2: TStringField;
    ClientDataSet1ShipToCity: TStringField;
    ClientDataSet1ShipToState: TStringField;
    ClientDataSet1ShipToZip: TStringField;
    ClientDataSet1ShipToCountry: TStringField;
    ClientDataSet1ShipToPhone: TStringField;
    ClientDataSet1ShipVIA: TStringField;
    ClientDataSet1PO: TStringField;
    ClientDataSet1Terms: TStringField;
    ClientDataSet1PaymentMethod: TStringField;
    ClientDataSet1ItemsTotal: TCurrencyField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Freight: TCurrencyField;
    ClientDataSet1AmountPaid: TCurrencyField;
    ClientDataSet1LookupField: TStringField;
    DataSource1: TDataSource;
    ListSource: TDataSource;
    ClientDataSet3: TClientDataSet;
    PartsSource: TDataSource;
    ClientDataSet4: TClientDataSet;
    ClientDataSet4OrderId: TAutoIncField;
    ClientDataSet4PartNo: TFloatField;
    ClientDataSet4OrderDate: TDateTimeField;
    PartOrderSource: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBLookupComboBox2Select(Sender: TObject);
    procedure UniDBGrid2ClearFilters(Sender: TObject);
    procedure UniDBGrid2ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseDBLookupComboBox.UniDBGrid2ClearFilters(Sender: TObject);
begin
  (Sender as TuniDBGrid).DataSource.DataSet.Filtered := False;
end;

procedure TUniDatabaseDBLookupComboBox.UniDBGrid2ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
var
  S, Sf : string;
  D : TDateTime;
  I : Integer;
  C : TUniBaseDBGridColumn;
begin
  Sender.DataSource.DataSet.Filtered := False;

  Sf := '';
  for I := 0 to Sender.Columns.Count - 1  do
  begin
    C := Sender.Columns[I];
    if C.Filtering.Enabled then
    begin
      S := '';
      if SameText(C.FieldName, 'PartNo') then
      begin
        S := VarToStr(C.Filtering.VarValue);
        if S<>'' then
          S := C.FieldName + ' = ' + S;
      end
      else if SameText(C.FieldName, 'OrderDate') then
      begin
        D := VarToDateTime(C.Filtering.VarValue);
        if D > 0.0 then
          S := C.FieldName + ' = ''' + DateToStr(D)+'''';
      end;

      if S<>'' then
      begin
        if Sf<>'' then Sf := Sf + ' and ';
        Sf := Sf + S;
      end;
    end;
  end;

  if Sf<>'' then
  begin
    Sender.DataSource.DataSet.Filter := Sf;
    Sender.DataSource.DataSet.Filtered := True;
  end;
end;

procedure TUniDatabaseDBLookupComboBox.UniDBLookupComboBox2Select(Sender: TObject);
begin
  UniMemo1.Lines.Add('KeyValue = ' + (sender as TUniDBLookupComboBox).KeyValueStr);
end;

procedure TUniDatabaseDBLookupComboBox.UniFrameCreate(Sender: TObject);
var
  I, N, N1: Integer;
  ds1, ds2 : TDataSet;
begin
  UniMemo1.Lines.Clear;

  // create dummy data for filtering
  ds1 := PartsSource.DataSet;
  ds2 := PartOrderSource.DataSet;
  N := ds1.RecordCount;
  for I := 1 to 2000 do
  begin
    N1 := Random(N);
    ds1.First;
    ds1.MoveBy(N1);

    ds2.Append;
    ds2.FieldByName('partno').Value := ds1.FieldByName('partno').Value;
    ds2.FieldByName('orderdate').AsDateTime := Date - Random(1000);
    ds2.Post;
  end;
end;

initialization
  RegisterClass(TUniDatabaseDBLookupComboBox);

end.
