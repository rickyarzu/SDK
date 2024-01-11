// Row Grouping = Grids
unit GridsRowGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, MainModule, uniPanel, DBClient, ServerModule;

type
  TUniGridsRowGrouping = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    ClientDataSet1: TClientDataSet;
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniGridsRowGrouping.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'country') then
    ClientDataSet1.IndexName:='CountryIndex';
end;

procedure TUniGridsRowGrouping.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
  ClientDataSet1.IndexDefs.Add('CountryIndex', 'country', []);
end;

initialization
  RegisterClass(TUniGridsRowGrouping);

end.
