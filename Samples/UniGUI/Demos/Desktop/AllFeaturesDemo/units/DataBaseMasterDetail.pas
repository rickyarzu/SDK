// Master Detail = DataBase
unit DataBaseMasterDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSplitter, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, DB, ServerModule, DBClient, MainModule;

type
  TUniDataBaseMasterDetail = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniDataBaseMasterDetail.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
  UniMainModule.LoadClientFromStream(ClientDataSet2, 'Order.cds');
  (OwnerForm as TUniForm).ActiveControl := UniDBGrid1;
end;

initialization
  RegisterClass(TUniDataBaseMasterDetail);
end.
