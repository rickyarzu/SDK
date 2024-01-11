// Row Widget = Grids

unit GridsRowWidget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniPanel, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, DB, DBClient;

type
  TUniGridsRowWidget = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    DataSource1: TDataSource;
    procedure UniDBGrid1RowExpand(Sender: TUniCustomDBGrid;
      const RowId: Integer; var RowControl: TControl; Container: TUniContainer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  RowWidgetDetailFrm;

{$R *.dfm}


procedure TUniGridsRowWidget.UniDBGrid1RowExpand(Sender: TUniCustomDBGrid;
  const RowId: Integer; var RowControl: TControl; Container: TUniContainer);
begin
  RowControl := TDetailFrame.Create(Container);
  TDetailFrame(RowControl).ApplyRange(ClientDataSet1CustNo.AsInteger, ClientDataSet1CustNo.AsInteger);
end;

initialization
  RegisterClass(TUniGridsRowWidget);

end.
