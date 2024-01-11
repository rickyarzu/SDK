unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMultiItem, uniComboBox,
  uniCheckBox, uniGUIBaseClasses, uniPanel, uniEdit, uniMemo, uniLabel,
  Menus, uniMainMenu, uniSpinEdit, uniButton, uniRadioButton,
  uniDateTimePicker, uniBitBtn, uniListBox, uniSpeedButton, uniMenuButton,
  uniBasicGrid, uniStringGrid, uniPageControl, uniTabControl, uniTreeView,
  uniDBComboBox, uniDBLookupComboBox, uniDBEdit, uniFieldSet, uniImageList,
  uniToolBar, uniDBGrid, uniDBNavigator, uniDBListBox, uniDBLookupListBox,
  uniCalendar, pngimage, uniImage, uniProgressBar,
  uniGenericControl, UniColorButton, UniColorPalette, uniCanvas, uniURLFrame,
  UniChart, DB, DBClient, uniTrackBar, ServerModule;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    UniComboBox1: TUniComboBox;
    UniEdit1: TUniEdit;
    UniNumberEdit1: TUniNumberEdit;
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniRadioButton1: TUniRadioButton;
    UniButton1: TUniButton;
    UniSpinEdit1: TUniSpinEdit;
    UniRadioButton2: TUniRadioButton;
    UniListBox1: TUniListBox;
    UniBitBtn1: TUniBitBtn;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniMenuButton1: TUniMenuButton;
    UniPopupMenu1: TUniPopupMenu;
    UniGUI1: TUniMenuItem;
    Delphi1: TUniMenuItem;
    Web1: TUniMenuItem;
    UniStringGrid2: TUniStringGrid;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabControl1: TUniTabControl;
    UniTreeView1: TUniTreeView;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBLookupListBox1: TUniDBLookupListBox;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniProgressBar1: TUniProgressBar;
    UniImage1: TUniImage;
    UniCalendar1: TUniCalendar;
    UniColorPalette1: TUniColorPalette;
    UniColorButton1: TUniColorButton;
    UniChart1: TUniChart;
    Series1: TUniLineSeries;
    Series4: TUniLineSeries;
    Series5: TUniLineSeries;
    UniDateTimePicker2: TUniDateTimePicker;
    UniPopupMenu2: TUniPopupMenu;
    Post1: TUniMenuItem;
    Cancel1: TUniMenuItem;
    UniPopupMenu3: TUniPopupMenu;
    DeleteRow1: TUniMenuItem;
    InsertRow1: TUniMenuItem;
    Edit1: TUniMenuItem;
    ClientDataSet2: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet2Quantity: TIntegerField;
    ClientDataSet1Category: TStringField;
    UniDBGrid2: TUniDBGrid;
    DataSource2: TDataSource;
    UniTrackBar1: TUniTrackBar;
    UniNativeImageList2: TUniNativeImageList;
    Yes1: TUniMenuItem;
    No1: TUniMenuItem;
    UniFieldSet2: TUniFieldSet;
    UniEdit4: TUniEdit;
    UniCheckBox3: TUniCheckBox;
    UniLabel2: TUniLabel;
    UniNumberEdit2: TUniNumberEdit;
    UniDateTimePicker4: TUniDateTimePicker;
    UniDateTimePicker5: TUniDateTimePicker;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    ThemeComboBox: TUniComboBox;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure UniDBGrid2ColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure ThemeComboBoxChange(Sender: TObject);
    procedure UniDBGrid2MultiColumnSort(Columns: TUniDBGridColumnArr;
      Directions: TUniSortDirections);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniStrUtils;

const
  Categories : array [1..3] of string = ('Raw Material', 'Product', 'Other');

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ThemeComboBoxChange(Sender: TObject);
begin
  UniMainModule.Theme:=ThemeComboBox.Text;
end;

procedure TMainForm.UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
var
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
    Column.AuxValues[1]:=Column.AuxValues[1] + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    F:=Column.Field.AsFloat * ClientDataSet2Quantity.AsInteger;

    Column.AuxValue:=Column.AuxValue + F;
    Column.AuxValues[1]:=Column.AuxValues[1] + F;
  end;
end;

procedure TMainForm.UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValue;
    Result:=Format('Total Units: %d', [I]);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: '+FormatCurr('0,0.00 ', F) ;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
  Column.AuxValue:=NULL;
end;

procedure TMainForm.UniDBGrid2ColumnSummaryTotal(Column: TUniDBGridColumn;
  Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValues[1];
    Result:=Format('Grand Total: %d', [I]);
    Attribs.Font.Style:=[fsBold, fsItalic];
    Attribs.Font.Color:=clGray;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValues[1];
    Result:='Grand Total: '+FormatCurr('0,0.00 ', F) ;
    Attribs.Font.Style:=[fsBold, fsItalic];
    Attribs.Font.Color:=clGray;
  end;
end;

procedure TMainForm.UniDBGrid2MultiColumnSort(Columns: TUniDBGridColumnArr;
  Directions: TUniSortDirections);
begin
 //
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I, J: Integer;
  Val : Double;
  Head : string;
  S : TUniStringArray;
  ThemeI : Integer;
begin
  S := UniServerModule.ThemeManager.AllThemes;

  ThemeComboBox.Items.Clear;
  for ThemeI := Low(S) to High(S) do
    ThemeComboBox.Items.Add(S[ThemeI]);

  ThemeComboBox.Text := UniMainModule.Theme;
  for I := 0  to 3  do
    for J := 0 to 3 do
      UniStringGrid2.Cells[I,J] := IntToStr(Random(10000)+1000);
 for I := 0 to 3 do
    UniStringGrid2.Cells[0,I] := IntToStr(2012+I);

  Series1.Clear;
  Series4.Clear;
  Series5.Clear;
  for I := 0 to 10-1 do
  begin
    Val:=StrToFloatDef(IntToStr(Random(100)+50), 0.0);
    Head:=IntToStr(2000+I);
    Series1.Add(Val, Head);
    Series4.Add(Val+Random(200), Head);
    Series5.Add(Val+Random(200), Head);
  end;

    for I := 1 to 15 do
  begin
    with ClientDataSet2 do
    begin
      Append;
      FieldByName('Item').AsString:='AG-'+Format('%0.5d', [I]);
      FieldByName('UnitPrice').AsFloat:=Random(20000)/100;
      FieldByName('Quantity').AsInteger:=Random(500);
      FieldByName('Category').AsString:=Categories[Random(3)+1];
    end;
  end;

  ClientDataSet2.AddIndex('CategoryIx', 'Category', []);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
