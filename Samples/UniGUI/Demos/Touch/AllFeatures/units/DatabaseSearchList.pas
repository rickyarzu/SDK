//Search List = Database
unit DatabaseSearchList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniMultiItem,
  unimList, uniButton, unimButton, uniEdit, unimEdit, uniGUIBaseClasses,
  uniGUImJSForm, ServerModule, MainModule;

type
  TUniDatabaseSearchList = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimList1: TUnimList;
    ClientDataSetSearch: TClientDataSet;
    ClientDataSetSearchCustNo: TFloatField;
    ClientDataSetSearchCompany: TStringField;
    ClientDataSetSearchAddr1: TStringField;
    ClientDataSetSearchAddr2: TStringField;
    ClientDataSetSearchCity: TStringField;
    ClientDataSetSearchState: TStringField;
    ClientDataSetSearchZip: TStringField;
    ClientDataSetSearchCountry: TStringField;
    ClientDataSetSearchPhone: TStringField;
    ClientDataSetSearchFAX: TStringField;
    ClientDataSetSearchTaxRate: TFloatField;
    ClientDataSetSearchContact: TStringField;
    ClientDataSetSearchLastInvoiceDate: TDateTimeField;
    procedure UnimButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseSearchList.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSetSearch, 'Search.cds');

  //ClientDataSetSearch.IndexDefs.Add('CustNoIndex', 'CustNo', []);
end;

procedure TUniDatabaseSearchList.UnimButton1Click(Sender: TObject);
begin
  UnimList1.Clear;
  ClientDataSetSearch.Filter:='city LIKE ''%'+UnimEdit1.Text+'%''';
  while not ClientDataSetSearch.Eof do
  begin
    UnimList1.Items.Add(ClientDataSetSearch.FieldByName('city').AsString);
    ClientDataSetSearch.Next;
  end;
end;

initialization
  RegisterClass(TUniDatabaseSearchList);
end.
