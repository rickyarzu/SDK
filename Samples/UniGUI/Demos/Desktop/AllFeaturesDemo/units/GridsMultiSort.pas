// Multi Sort = Grids
unit GridsMultiSort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, DB,
  ADODB, uniButton, uniBitBtn, uniSpeedButton, uniMemo, uniEdit,
  uniDBEdit, uniBasicGrid, uniDBGrid;

type
  TUniGridsMultiSort = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniMemo1: TUniMemo;
    UniSpeedButton1: TUniSpeedButton;
    DataSource: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniDBGrid1MultiColumnSort(Columns: TUniDBGridColumnArr;
      Directions: TUniSortDirections);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses
  StrUtils, uniStrUtils, MainModule;

procedure TUniGridsMultiSort.UniDBGrid1MultiColumnSort(
  Columns: TUniDBGridColumnArr; Directions: TUniSortDirections);
var
  OrderStr : string;
  I : Integer;
begin
  UniMemo1.Clear;
  UniMainModule.ADOQuery1.Close;
  OrderStr := 'select * from [Customers]' + ' order by ';

  for I := Low(Columns) to High(Columns) do
  begin
    OrderStr := OrderStr + '[' + Columns[I].FieldName + '] ' + IfThen(Directions[I], 'ASC', 'DESC') + ',';
  end;

  OrderStr := RemoveTrailingChar(OrderStr, ',');
  UniMemo1.Lines.Add(OrderStr);

  UniMainModule.ADOQuery1.SQL.Text := OrderStr;
  UniMainModule.ADOQuery1.Open;
end;

procedure TUniGridsMultiSort.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  UniMemo1.Clear;
  UniMainModule.InitCacheFiles;

  for I := 0 to UniMainModule.ADOQuery1.Parameters.Count -1  do
    UniMainModule.ADOQuery1.Parameters[I].Value := '%%';

  UniMainModule.ADOQuery1.Open;
end;

procedure TUniGridsMultiSort.UniSpeedButton1Click(Sender: TObject);
begin
  UniDBGrid1.Grouping.Enabled := UniSpeedButton1.Down;

end;

initialization
  RegisterClass(TUniGridsMultiSort);


end.
