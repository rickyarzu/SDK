unit Janua.CarService.UniGUI.dlgCustomerVehicles;

interface

uses
  Windows, Messages, SysUtils, Variants,
  // VCL / FMX
  Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton,
  uniBitBtn, UniFSButton, Data.DB, uniBasicGrid, uniDBGrid;

type
  TdlgUniGUICarServiceCustomerVehicles = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    btnOK: TUniFSButton;
    btnUndo: TUniFSButton;
    UniDBGrid1: TUniDBGrid;
    dsCustomerVehicles: TDataSource;
    procedure btnOKClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
  private
    FSearchResult: Boolean;
    FSearchDataset: TDataset;
    procedure SetSearchResult(const Value: Boolean);
    procedure SetSearchDataset(const Value: TDataset);
    { Private declarations }
  public
    property SearchDataset: TDataset read FSearchDataset write SetSearchDataset;
    property SearchResult: Boolean read FSearchResult write SetSearchResult;
  end;

implementation

uses
  uniGUIApplication, Janua.CarService.PgBooking;

{$R *.dfm}
{ TdlgUniGUICarServiceCustomerVehicles }

procedure TdlgUniGUICarServiceCustomerVehicles.btnOKClick(Sender: TObject);
begin
  FSearchResult := True;
  Close;
end;

procedure TdlgUniGUICarServiceCustomerVehicles.btnUndoClick(Sender: TObject);
begin
  FSearchResult := False;
  Close;
end;

procedure TdlgUniGUICarServiceCustomerVehicles.SetSearchDataset(const Value: TDataset);
begin
  FSearchDataset := Value;
  dsCustomerVehicles.DataSet := FSearchDataset;
end;

procedure TdlgUniGUICarServiceCustomerVehicles.SetSearchResult(const Value: Boolean);
begin
  FSearchResult := Value;
end;

end.
