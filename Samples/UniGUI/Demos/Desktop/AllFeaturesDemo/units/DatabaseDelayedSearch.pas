// Delayed Search = Database
unit DatabaseDelayedSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniBasicGrid, uniDBGrid, uniEdit,
  uniLabel, uniGUIBaseClasses, uniPanel, MainModule, ServerModule, DBClient;

type
  TUniDatabaseDelayedSearch = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    procedure UniEdit1Change(Sender: TObject);
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



procedure TUniDatabaseDelayedSearch.UniEdit1Change(Sender: TObject);
begin
  ClientDataSet1.Filter:='company LIKE ''%'+UniEdit1.Text+'%'' or City LIKE ''%'+UniEdit1.Text+'%''';
end;

procedure TUniDatabaseDelayedSearch.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');

  ClientDataSet1.FilterOptions := [foCaseInsensitive];
  ClientDataSet1.Filtered := True;

  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

initialization
  RegisterClass(TUniDatabaseDelayedSearch);

end.
