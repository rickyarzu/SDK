// Header Multiple Level Grouping = Grids
unit GridsHeaderMultipleLevelGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, DB, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, MainModule, DBClient, ServerModule;

type
  TUniGridsHeaderMultipleLevelGrouping = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsHeaderMultipleLevelGrouping.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
   RegisterClass(TUniGridsHeaderMultipleLevelGrouping);


end.
