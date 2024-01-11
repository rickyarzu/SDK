// Grouping Sorting = Grids
unit GridsGroupingSorting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniDBEdit, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, MainModule;

type
  TUniGridsGroupingSorting = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    procedure UniDBGrid1MultiColumnSort(Columns: TUniDBGridColumnArr;
      Directions: TUniSortDirections);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
   StrUtils, uniStrUtils, uniGUIForm;

{$R *.dfm}


procedure TUniGridsGroupingSorting.UniDBGrid1MultiColumnSort(
  Columns: TUniDBGridColumnArr; Directions: TUniSortDirections);
var
  OrderStr : string;
  I : Integer;
begin
  UniMainModule.ADOQuery5.Close;
  OrderStr := 'select * from [Customers]' + ' order by ';

  for I := Low(Columns) to High(Columns) do
  begin
    OrderStr := OrderStr + '['+Columns[I].FieldName+ '] '+IfThen(Directions[I], 'ASC', 'DESC')+',';

  end;

  OrderStr := RemoveTrailingChar(OrderStr, ',');

  UniMainModule.ADOQuery5.SQL.Text := OrderStr;
  UniMainModule.ADOQuery5.Open;
end;

procedure TUniGridsGroupingSorting.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.InitCacheFiles;

  UniMainModule.ADOQuery5.Open;

  (OwnerForm as TUniForm).ActiveControl := UniDBEdit1;
end;

initialization
  RegisterClass(TUniGridsGroupingSorting);

end.
