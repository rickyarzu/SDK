// Header Grouping = Grids
unit GridsHeaderGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, MainModule, DBClient, ServerModule;

type
  TUniGridsHeaderGrouping = class(TUniFrame)
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


procedure TUniGridsHeaderGrouping.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
   RegisterClass(TUniGridsHeaderGrouping);

end.
