unit Janua.CarService.UniGUI.frameCarBookingClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Data.DB,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniGUIBaseClasses, uniEdit, UniFSCombobox, uniListBox, uniButton, uniBitBtn,
  UniFSButton, Vcl.Controls, Vcl.Forms, uniPanel, uniLabel,
  // Januaproject
  Janua.Cloud.GoogleAPIs, JOrm.Anagraph.Intf, Janua.Core.Commons,
  // ViewModels
  Janua.Anagraph.ViewModel.Intf, Janua.CarService.Anagraph.ViewModel.Intf, JOrm.CarService.Booking.Intf,
  // Dialogs
  Janua.UniGUI.dlgSearchGoogleAddress, Janua.CarService.UniGUI.dlgCustomerVehicles, Janua.UniGUI.Interposers;

type
  TframeUniGuiCarBookingClient = class(TUniFrame)
    cntCarBookingClient: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    edFirstName: TUniEdit;
    UniContainerPanel7: TUniContainerPanel;
    EdLastName: TUniEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel8: TUniContainerPanel;
    btnSearch: TUniFSButton;
    UniContainerPanel9: TUniContainerPanel;
    EdFullAddress: TUniEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel10: TUniContainerPanel;
    EdCustomerPhone: TUniEdit;
    UniContainerPanel11: TUniContainerPanel;
    edCustomerEmail: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel12: TUniContainerPanel;
    edCarNumberPlate: TUniEdit;
    UniContainerPanel13: TUniContainerPanel;
    edCarColor: TUniEdit;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel14: TUniContainerPanel;
    edReturnAddress: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    btnReturnAddress: TUniFSButton;
    cnt05CarModel: TUniContainerPanel;
    edCarModel: TUniEdit;
    cnt01SelectCustomer: TUniContainerPanel;
    lbSelectCustomer: TUniLabel;
    dblcbAnagraphCustomers: TUniFSComboBox;
    procedure dblcbAnagraphCustomersChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure EdFullAddressEnter(Sender: TObject);
    procedure edReturnAddressEnter(Sender: TObject);
    procedure edReturnAddressExit(Sender: TObject);
    procedure EdFullAddressExit(Sender: TObject);
    procedure btnReturnAddressClick(Sender: TObject);
  private
    { Private declarations }
    FGoogleSearchDialog1: TUniGoogleSearchDialog;
    FGoogleSearchDialog2: TUniGoogleSearchDialog;
    FMonitorObject: TObject;
    FLength: integer;
    FUsersList: IAnagraphViews;
    FCarBooking: IBookingHeadView;
    FMainAddress: String;
    FReturnAddress: String;
    FCustomerVehicleDataset: TDataset;
    lDlg: TdlgUniGUICarServiceCustomerVehicles;
    procedure SetCarBooking(const Value: IBookingHeadView);
    procedure SetUsersList(const Value: IAnagraphViews);
    function GetAnagraph: IBookingAnagraphView;
    procedure SetCustomerVehicleDataset(const Value: TDataset);
    procedure SelectCustomerVehicle;
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
    property CarBooking: IBookingHeadView read FCarBooking write SetCarBooking;
    property UsersList: IAnagraphViews read FUsersList write SetUsersList;
    property Anagraph: IBookingAnagraphView read GetAnagraph;
    procedure GoogleResult1(Sender: TObject);
    procedure GoogleResult2(Sender: TObject);
    procedure PostRecord;
    procedure SearchVehicleResult(Sender: TObject; var Action: TCloseAction);
  public
    property CustomerVehicleDataset: TDataset read FCustomerVehicleDataset write SetCustomerVehicleDataset;
  end;

implementation

uses Janua.Core.Functions, Janua.Core.AsyncTask, Janua.Core.Entities,
  Janua.CarService.Anagraph.Model.Impl;

{$R *.dfm}
{ TframeUniGuiCarBookingClient }

procedure TframeUniGuiCarBookingClient.btnReturnAddressClick(Sender: TObject);
begin
  FGoogleSearchDialog2.RecordAddress := Anagraph.ReturnAddress;
  FGoogleSearchDialog2.edtFullAddress := edReturnAddress;
  FGoogleSearchDialog2.Execute(edReturnAddress.Text);
end;

procedure TframeUniGuiCarBookingClient.btnSearchClick(Sender: TObject);
begin
  FGoogleSearchDialog1.RecordAnagraph := FCarBooking.AnagraphClient as IAnagraph;
  FGoogleSearchDialog1.RecordAddress := FCarBooking.AnagraphClient.MainAddress;
  FGoogleSearchDialog1.edtFullAddress := EdFullAddress;
  FGoogleSearchDialog1.Execute(EdFullAddress.Text);
end;

constructor TframeUniGuiCarBookingClient.Create(AOwner: TComponent);
begin
  inherited;
  FLength := 0;
  FMonitorObject := TObject.Create;
  FGoogleSearchDialog1 := TUniGoogleSearchDialog.Create(Self);
  FGoogleSearchDialog1.edtSearchAddress := EdFullAddress;
  FGoogleSearchDialog1.OnRecordFound := GoogleResult1;

  FGoogleSearchDialog2 := TUniGoogleSearchDialog.Create(Self);
  FGoogleSearchDialog2.edtSearchAddress := edReturnAddress;
  FGoogleSearchDialog2.OnRecordFound := GoogleResult2;
end;

procedure TframeUniGuiCarBookingClient.dblcbAnagraphCustomersChange(Sender: TObject);

var
  aModel: IJanuaCarServiceAnagraphModel;
  tmpAnagraphRecord: IAnagraphView;

  function CheckCompiled: Boolean;
  begin
    Result := (CarBooking.customerId.AsInteger = 0) and (edFirstName.Text = '') and (EdLastName.Text = '') and
      (EdFullAddress.Text = '') and (EdCustomerPhone.Text = '') and (edCustomerEmail.Text = '');
  end;

begin
  aModel := TJanuaCarServiceAnagraphModel.Create;
  // se premo x è Null altrimenti se seleziono utente primo è 0 in caso di Nullo chiedo cosa fare
  if dblcbAnagraphCustomers.ItemIndex > 0 then
  begin
    FUsersList.ItemIndex := dblcbAnagraphCustomers.ItemIndex;
    var
    lTest := aModel.TryGetAnagraphByID(tmpAnagraphRecord, FUsersList.AnagraphId.AsInteger);

    CarBooking.customerId.AsInteger := FUsersList.AnagraphId.AsInteger;
    CarBooking.AnagraphClient.AnagraphId.AsInteger := FUsersList.AnagraphId.AsInteger;

    edFirstName.Text := FUsersList.AnName.AsString;
    FCarBooking.CustFirstName.AsString := FUsersList.AnName.AsString;
    CarBooking.AnagraphClient.AnName.AsString := FUsersList.AnName.AsString;

    EdLastName.Text := FUsersList.AnLastName.AsString;
    CarBooking.CustLastName.AsString := FUsersList.AnLastName.AsString;
    CarBooking.AnagraphClient.AnLastName.AsString := FUsersList.AnName.AsString;

    EdCustomerPhone.Text := FUsersList.AnCellular.AsString;
    FCarBooking.CustCellular.AsString := FUsersList.AnCellular.AsString;
    CarBooking.AnagraphClient.AnCellular.AsString := FUsersList.AnName.AsString;

    edCustomerEmail.Text := FUsersList.AnEmail.AsString;
    FCarBooking.CustEmail.AsString := FUsersList.AnEmail.AsString;

    FCarBooking.FullAddress.AsString := FUsersList.AnFullAddress.AsString;
    EdFullAddress.Text := FUsersList.AnAddress.AsString;

    if lTest then
      CarBooking.AnagraphClient.Assign(tmpAnagraphRecord)
    else
      CarBooking.AnagraphClient.Assign(FUsersList.AnagraphView);

    { TODO : Occorre recuperare il record anagrafico completo e metterlo in un temp e poi assegnarlo }
    var
    lAddress := CarBooking.AnagraphClient.AnFullAddress.AsString;

    if Assigned(CustomerVehicleDataset) then
      SelectCustomerVehicle;
  end
  else
  begin
    // qui mettiamo un Dialog? del tipo sei sicuro di cancellare i dati?
    if (dblcbAnagraphCustomers.ItemIndex = 0) and not CheckCompiled then
      MessageDlg('Siete sicuri di cancellare i dati Inseriti?', mtConfirmation, mbYesNo,
        procedure(Sender: TComponent; Res: integer)
        begin
          case Res of
            mrYes:
              begin
                CarBooking.ClearCustomer;
                edFirstName.Text := '';
                EdLastName.Text := '';
                EdFullAddress.Text := '';
                EdCustomerPhone.Text := '';
                edCustomerEmail.Text := '';
              end;
          end;
        end);
  end;

end;

procedure TframeUniGuiCarBookingClient.EdFullAddressEnter(Sender: TObject);
begin
  FMainAddress := EdFullAddress.Text;
end;

procedure TframeUniGuiCarBookingClient.EdFullAddressExit(Sender: TObject);
begin
  { if FMainAddress <> EdFullAddress.Text then
    btnSearchClick(Self); }
end;

procedure TframeUniGuiCarBookingClient.edReturnAddressEnter(Sender: TObject);
begin
  FReturnAddress := edReturnAddress.Text;
end;

procedure TframeUniGuiCarBookingClient.edReturnAddressExit(Sender: TObject);
begin
  { if FReturnAddress <> edReturnAddress.Text then
    btnReturnAddressClick(Self); }
end;

function TframeUniGuiCarBookingClient.GetAnagraph: IBookingAnagraphView;
begin
  Result := FCarBooking.AnagraphClient
end;

procedure TframeUniGuiCarBookingClient.GoogleResult1(Sender: TObject);
begin
  Anagraph.SetfromRecordAddress(FGoogleSearchDialog1.GooglePlace);
  EdFullAddress.Text := FGoogleSearchDialog1.GooglePlace.AddressFull;
  FMainAddress := EdFullAddress.Text;
end;

procedure TframeUniGuiCarBookingClient.GoogleResult2(Sender: TObject);
begin
  Anagraph.ReturnAddress.SetfromRecordAddress(FGoogleSearchDialog1.GooglePlace);
  FReturnAddress := edReturnAddress.Text;
end;

procedure TframeUniGuiCarBookingClient.PostRecord;
begin
  if FCarBooking.AnagraphClient.AnagraphId.AsInteger = 0 then
  begin
    FCarBooking.CustFirstName.AsString := edFirstName.Text;
    FCarBooking.AnagraphClient.AnName.AsString := edFirstName.Text;

    FCarBooking.CustLastName.AsString := EdLastName.Text;
    FCarBooking.AnagraphClient.AnLastName.AsString := EdLastName.Text;
  end;

  var
  lPhone := Trim(EdCustomerPhone.Text);
  var
  lChar := Copy(lPhone, 1, 1);

  if not(lChar = '+') then
    lPhone := '+39' + lPhone;

  FCarBooking.CustCellular.AsString := EdCustomerPhone.Text;
  FCarBooking.AnagraphClient.AnCellular.AsString := EdCustomerPhone.Text;

  FCarBooking.CustEmail.AsString := edCustomerEmail.Text;
  FCarBooking.AnagraphClient.AnEmail.AsString := edCustomerEmail.Text;
  { (VehicleModel.asString <> '') and (VehicleNumberplate.asString <> '')
    and (VehicleColor.asString <> ''); }
  FCarBooking.VehicleModel.AsString := edCarModel.Text;
  FCarBooking.VehicleNumberplate.AsString := edCarNumberPlate.Text;
  FCarBooking.VehicleColor.AsString := edCarColor.Text;

  if FCarBooking.AnagraphClient.AnagraphId.AsInteger = 0 then
  begin
    FCarBooking.AnagraphClient.Post;
    FCarBooking.AnagraphClient.SyncMainAddress;
  end;

  var
  lReturn := FCarBooking.AnagraphClient.ReturnAddress.FullAddress.AsString;
  var
  lGoogle := FGoogleSearchDialog2.GooglePlace.AddressFull;

  if (lGoogle <> '') and (lReturn <> lGoogle) then
    FCarBooking.AnagraphClient.ReturnAddress.SetfromRecordAddress(FGoogleSearchDialog2.GooglePlace);

{$IFDEF DEBUG}
  var
  lMain := FCarBooking.AnagraphClient.MainAddress.FullAddress.AsString;
  if lReturn <> lMain then
    ShowMessage(lReturn + sLineBreak + lMain, nil);
{$ENDIF}
  (*
    if (FGoogleSearchDialog2.GooglePlace.AddressFull <> '') and
    (FGoogleSearchDialog2.GooglePlace.AddressFull <> FCarBooking.AnagraphClient.ReturnAddress.FullAddress.
    AsString) then
    FCarBooking.AnagraphClient.ReturnAddress.SetfromRecordAddress(FGoogleSearchDialog2.GooglePlace);
  *)
end;

procedure TframeUniGuiCarBookingClient.SearchVehicleResult(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(lDlg) then
    try
      if lDlg.SearchResult then
        FCarBooking.SetVehicleFromDataset(FCustomerVehicleDataset);

      edCarModel.Text := FCarBooking.VehicleModel.AsString;
      edCarNumberPlate.Text := FCarBooking.VehicleNumberplate.AsString;
      edCarColor.Text := FCarBooking.VehicleColor.AsString;
      lDlg := nil;
    finally
      Action := TCloseAction.caFree;
    end;
end;

procedure TframeUniGuiCarBookingClient.SelectCustomerVehicle;
begin
  if Assigned(Self.FCustomerVehicleDataset) then
  begin
    FCustomerVehicleDataset.Close;
    FCustomerVehicleDataset.Open;
    if FCustomerVehicleDataset.RecordCount = 1 then
    begin
      FCarBooking.SetVehicleFromDataset(FCustomerVehicleDataset);
    end
    else
    begin // TdlgUniGUICarServiceCustomerVehicles
      lDlg := TdlgUniGUICarServiceCustomerVehicles.Create(UniApplication);
      lDlg.SearchDataset := FCustomerVehicleDataset;
      lDlg.OnClose := SearchVehicleResult;
      lDlg.ShowModal;
    end;
  end;
end;

procedure TframeUniGuiCarBookingClient.SetCarBooking(const Value: IBookingHeadView);
begin
  FCarBooking := Value;
  if Assigned(FCarBooking) then
  begin
    FGoogleSearchDialog1.RecordAnagraph := FCarBooking.AnagraphClient as IAnagraph;
  end;
end;

procedure TframeUniGuiCarBookingClient.SetCustomerVehicleDataset(const Value: TDataset);
begin
  FCustomerVehicleDataset := Value;
end;

procedure TframeUniGuiCarBookingClient.SetUsersList(const Value: IAnagraphViews);
begin
  FUsersList := Value;
  if Assigned(FUsersList) then
    dblcbAnagraphCustomers.BindToRecordSet(Value, Value.AnagraphId, [Value.AnLastName, Value.AnName]);
end;

end.
