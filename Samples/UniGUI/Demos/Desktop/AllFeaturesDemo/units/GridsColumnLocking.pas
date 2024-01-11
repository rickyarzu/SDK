// Column Locking = Grids
unit GridsColumnLocking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, MainModule, DB, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniPanel, DBClient, ServerModule;

type
  TUniGridsColumnLocking = class(TUniFrame)
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniContainerPanel1: TUniContainerPanel;
    ClientDataSet1: TClientDataSet;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsColumnLocking.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
   RegisterClass(TUniGridsColumnLocking);

end.
