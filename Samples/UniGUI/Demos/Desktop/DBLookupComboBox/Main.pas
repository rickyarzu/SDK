//AllFeatures: DBLookupComboBox,DBLookup - Basic,icon-custom-template-combo
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  DB, StdCtrls, UniLabel, DBCtrls, uniDBLookupComboBox, uniDBLookupListBox,
  uniDBNavigator, DBClient, ComCtrls, uniStatusBar, uniBasicGrid,
  uniGUIRegClasses,  uniGUIClasses, uniPanel, uniListBox, uniDBListBox,
  uniMultiItem, uniComboBox, uniDBComboBox, uniGUIBaseClasses, uniButton, uniMemo,
  uniDateTimePicker;

type
  TMainForm = class(TUniForm)
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
    UniLabel3: TUniLabel;
    UniDBGrid4: TUniDBGrid;
    UniHiddenPanel4: TUniHiddenPanel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UniDBLookupComboBox2Select(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid2ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniDBGrid2ClearFilters(Sender: TObject);
    procedure UniDBLookupComboBox5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, uniGUIAbstractClasses;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid2ClearFilters(Sender: TObject);
begin
  (Sender as TuniDBGrid).DataSource.DataSet.Filtered := False;
end;

procedure TMainForm.UniDBGrid2ColumnFilter(Sender: TUniDBGrid;
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
          S := C.FieldName + ' = ''' + DateToStr(D) + '''';
      end;

      if S<>'' then
      begin
        if Sf<>'' then Sf := Sf + ' and ';
        Sf := Sf + S;
      end;
    end;
  end;

  if Sf <> '' then
  begin
    Sender.DataSource.DataSet.Filter := Sf;
    Sender.DataSource.DataSet.Filtered := True;
  end;
end;

procedure TMainForm.UniDBLookupComboBox2Select(Sender: TObject);
begin
  UniMemo1.Lines.Add('KeyValue = ' + (sender as TUniDBLookupComboBox).KeyValueStr);
end;

procedure TMainForm.UniDBLookupComboBox5Change(Sender: TObject);
begin
//
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I, N, N1: Integer;
  ds1, ds2 : TDataSet;
begin
  UniMemo1.Lines.Clear;

  // create dummy data for filtering
  ds1 := UniMainModule.PartsSource.DataSet;
  ds2 := UniMainModule.PartOrderSource.DataSet;
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
  ds2.First;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
