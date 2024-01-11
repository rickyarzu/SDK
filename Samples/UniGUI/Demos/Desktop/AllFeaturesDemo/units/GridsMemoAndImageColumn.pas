// Memo and Image Column = Grids
unit GridsMemoAndImageColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, MainModule, ServerModule, DB,
  DBClient;

type
  TUniGridsMemoAndImageColumn = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsMemoAndImageColumn.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'biolife.cds');
end;

initialization
  RegisterClass(TUniGridsMemoAndImageColumn);

end.
