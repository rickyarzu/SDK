//AllFeatures: Grid,Grouping - Sorting,icon-grouped-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIRegClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, DB, DBClient, ADODB, uniEdit, uniDBEdit, uniMemo, uniButton,
  uniBitBtn, uniSpeedButton;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    ADOQuery1: TADOQuery;
    DataSource: TDataSource;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniMemo1: TUniMemo;
    UniSpeedButton1: TUniSpeedButton;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1MultiColumnSort(Columns: TUniDBGridColumnArr;
      Directions: TUniSortDirections);
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, StrUtils, uniStrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid1MultiColumnSort(Columns: TUniDBGridColumnArr;
  Directions: TUniSortDirections);
var
  OrderStr : string;
  I : Integer;
begin
  UniMemo1.Clear;
  ADOQuery1.Close;
  OrderStr := 'select * from [Customers]' + ' order by ';

  for I := Low(Columns) to High(Columns) do
  begin
    OrderStr := OrderStr + '[' + Columns[I].FieldName + '] ' + IfThen(Directions[I], 'ASC', 'DESC') + ',';
  end;

  OrderStr := RemoveTrailingChar(OrderStr, ',');
  UniMemo1.Lines.Add(OrderStr);

  ADOQuery1.SQL.Text := OrderStr;
  ADOQuery1.Open;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Clear;
  ADOQuery1.Open;
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  UniDBGrid1.Grouping.Enabled := UniSpeedButton1.Down;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
