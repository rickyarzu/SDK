unit Janua.Carservice.UniGUI.CarBookingClientController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Data.DB,
  // VCL - FMX
  Vcl.Controls, Vcl.Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniGUIBaseClasses, uniEdit, UniFSCombobox, uniListBox, uniButton, uniBitBtn, uniPanel,
  uniLabel, UniFSButton,
  // Januaproject {Janua.UniGUI.Interposers,}
  Janua.UniGUI.dlgSearchGoogleAddress, Janua.Cloud.GoogleAPIs, Janua.Carservice.UniGUI.dlgCustomerVehicles,
  // ViewModels
  Janua.Anagraph.ViewModel.Intf, Janua.Carservice.Anagraph.ViewModel.Intf,
  JOrm.Carservice.Booking.Intf, JOrm.Anagraph.Intf,
  // Controllers Framework (Bindings, controllers)
  Janua.Orm.Intf, Janua.Bindings.Intf, Janua.Controls.Forms.Intf, Janua.UniGUI.Controller;

type
  TCarBookingClientController = class(TJanuaUniGUIController)
  public
    procedure dblcbAnagraphCustomersChange(Sender: TObject); // Set to dblcbAnagraphCustomers
    procedure btnSearchClick(Sender: TObject); // Set to FbtnSearch
    procedure EdFullAddressEnter(Sender: TObject); // Set to EdFullAddress
    procedure edReturnAddressEnter(Sender: TObject); // Set to edReturnAddress
    procedure edReturnAddressExit(Sender: TObject); // Set to edReturnAddress
    procedure EdFullAddressExit(Sender: TObject); // Set to dFullAddressExit
    procedure btnReturnAddressClick(Sender: TObject); // Set to btnReturnAddres
  private
    FEdLastName: TUniEdit;
    FEdFullAddress: TUniEdit;
    FdblcbAnagraphCustomers: TUniFSComboBox;
    FedCarNumberPlate: TUniEdit;
    FedCustomerEmail: TUniEdit;
    FedReturnAddress: TUniEdit;
    FedCarModel: TUniEdit;
    FedCarColor: TUniEdit;
    FlbSelectCustomer: TUniLabel;
    FEdCustomerPhone: TUniEdit;
    FedFirstName: TUniEdit;
    FbtnSearch: TUniFSButton;
    FbtnReturnAddress: TUniFSButton;
    lDlg: TdlgUniGUICarServiceCustomerVehicles;
    procedure SetbtnReturnAddress(const Value: TUniFSButton);
    procedure SetbtnSearch(const Value: TUniFSButton);
    procedure SetdblcbAnagraphCustomers(const Value: TUniFSComboBox);
    procedure SetedCarColor(const Value: TUniEdit);
    procedure SetedCarModel(const Value: TUniEdit);
    procedure SetedCarNumberPlate(const Value: TUniEdit);
    procedure SetedCustomerEmail(const Value: TUniEdit);
    procedure SetEdCustomerPhone(const Value: TUniEdit);
    procedure SetedFirstName(const Value: TUniEdit);
    procedure SetEdFullAddress(const Value: TUniEdit);
    procedure SetEdLastName(const Value: TUniEdit);
    procedure SetedReturnAddress(const Value: TUniEdit);
    procedure SetlbSelectCustomer(const Value: TUniLabel);
    procedure SelectCustomerVehicle;
  private
    FCustomerVehicleDataset: TDataset;
    procedure SetCustomerVehicleDataset(const Value: TDataset);
  published
    property edCarModel: TUniEdit read FedCarModel write SetedCarModel;
    property dblcbAnagraphCustomers: TUniFSComboBox read FdblcbAnagraphCustomers
      write SetdblcbAnagraphCustomers;
    property edFirstName: TUniEdit read FedFirstName write SetedFirstName;
    property EdLastName: TUniEdit read FEdLastName write SetEdLastName;
    property btnSearch: TUniFSButton read FbtnSearch write SetbtnSearch;
    property EdFullAddress: TUniEdit read FEdFullAddress write SetEdFullAddress;
    property EdCustomerPhone: TUniEdit read FEdCustomerPhone write SetEdCustomerPhone;
    property edCustomerEmail: TUniEdit read FedCustomerEmail write SetedCustomerEmail;
    property edCarNumberPlate: TUniEdit read FedCarNumberPlate write SetedCarNumberPlate;
    property edCarColor: TUniEdit read FedCarColor write SetedCarColor;
    property edReturnAddress: TUniEdit read FedReturnAddress write SetedReturnAddress;
    property btnReturnAddress: TUniFSButton read FbtnReturnAddress write SetbtnReturnAddress;
    property lbSelectCustomer: TUniLabel read FlbSelectCustomer write SetlbSelectCustomer;
    property CustomerVehicleDataset: TDataset read FCustomerVehicleDataset write SetCustomerVehicleDataset;
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
    procedure SetCarBooking(const Value: IBookingHeadView);
    procedure SetUsersList(const Value: IAnagraphViews);
    function GetAnagraph: IBookingAnagraphView;
    procedure AssignUserList;
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
    /// procedure GoogleMapsClose(Sender: TObject; var Action: TCloseAction);
  end;

procedure Register;

implementation

uses Janua.Core.Functions, Janua.Core.AsyncTask, Janua.Core.Entities,
  Janua.Carservice.Anagraph.Model.Impl;

procedure Register;
begin
  RegisterComponents('Janua CarService UniGUI', [TCarBookingClientController]);
end;

procedure TCarBookingClientController.AssignUserList;
var
  aList: IJanuaRecordsetBindableComboControl;
begin
  if Assigned(FUsersList) and Assigned(FdblcbAnagraphCustomers) then
    if Supports(dblcbAnagraphCustomers, IJanuaBindableComboControl, aList) then
    begin
      var
      aLastName := FUsersList.AnLastName;
      var
      aAnagraphId := FUsersList.AnagraphId;
      var
      aName := FUsersList.AnName;

      FUsersList.ListFields := [aName, aLastName];
      FUsersList.First;
      dblcbAnagraphCustomers.Items.Assign(FUsersList.AsStringList);
      dblcbAnagraphCustomers.ItemIndex := -1;

      {
        aList.BindToRecordSet(FUsersList, aAnagraphId, [aLastName, aLastName]);
      }
    end;
end;

procedure TCarBookingClientController.btnReturnAddressClick(Sender: TObject);
begin
  // edtFullAddress
  FGoogleSearchDialog2.edtFullAddress := edReturnAddress;
  FGoogleSearchDialog2.RecordAddress := Anagraph.ReturnAddress;
  FGoogleSearchDialog2.Execute(edReturnAddress.Text);
end;

procedure TCarBookingClientController.btnSearchClick(Sender: TObject);
begin
  FGoogleSearchDialog1.RecordAnagraph := FCarBooking.AnagraphClient as IAnagraph;
  FGoogleSearchDialog1.RecordAddress := FCarBooking.AnagraphClient.MainAddress;
  FGoogleSearchDialog1.edtFullAddress := EdFullAddress;
  FGoogleSearchDialog1.Execute(EdFullAddress.Text);
end;

constructor TCarBookingClientController.Create(AOwner: TComponent);
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

procedure TCarBookingClientController.dblcbAnagraphCustomersChange(Sender: TObject);

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

procedure TCarBookingClientController.EdFullAddressEnter(Sender: TObject);
begin
  FMainAddress := EdFullAddress.Text;
end;

procedure TCarBookingClientController.EdFullAddressExit(Sender: TObject);
begin
  { if FMainAddress <> EdFullAddress.Text then
    btnSearchClick(Self); }
end;

procedure TCarBookingClientController.edReturnAddressEnter(Sender: TObject);
begin
  FReturnAddress := edReturnAddress.Text;
end;

procedure TCarBookingClientController.edReturnAddressExit(Sender: TObject);
begin
  { if FReturnAddress <> edReturnAddress.Text then
    btnReturnAddressClick(Self); }
end;

function TCarBookingClientController.GetAnagraph: IBookingAnagraphView;
begin
  Result := FCarBooking.AnagraphClient
end;

procedure TCarBookingClientController.GoogleResult1(Sender: TObject);
begin
  Anagraph.SetfromRecordAddress(FGoogleSearchDialog1.GooglePlace);
  EdFullAddress.Text := FGoogleSearchDialog1.GooglePlace.AddressFull;
  FMainAddress := EdFullAddress.Text;
end;

procedure TCarBookingClientController.GoogleResult2(Sender: TObject);
begin
  Anagraph.ReturnAddress.SetfromRecordAddress(FGoogleSearchDialog2.GooglePlace);
  FReturnAddress := edReturnAddress.Text;
end;

procedure TCarBookingClientController.PostRecord;
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

  if not (lChar = '+') then
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
end;

procedure TCarBookingClientController.SearchVehicleResult(Sender: TObject; var Action: TCloseAction);
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

procedure TCarBookingClientController.SelectCustomerVehicle;
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

procedure TCarBookingClientController.SetbtnReturnAddress(const Value: TUniFSButton);
begin
  FbtnReturnAddress := Value;
  // btnReturnAddressClick
  if Assigned(FbtnReturnAddress) then
    FbtnReturnAddress.OnClick := btnReturnAddressClick
end;

procedure TCarBookingClientController.SetbtnSearch(const Value: TUniFSButton);
begin
  FbtnSearch := Value;
  if Assigned(FbtnSearch) then
    FbtnSearch.OnClick := btnSearchClick;
end;

procedure TCarBookingClientController.SetCarBooking(const Value: IBookingHeadView);
begin
  FCarBooking := Value;
  if Assigned(FCarBooking) then
  begin
    FGoogleSearchDialog1.RecordAnagraph := FCarBooking.AnagraphClient as IAnagraph;
  end;
end;

procedure TCarBookingClientController.SetCustomerVehicleDataset(const Value: TDataset);
begin
  FCustomerVehicleDataset := Value;
end;

procedure TCarBookingClientController.SetdblcbAnagraphCustomers(const Value: TUniFSComboBox);
begin
  FdblcbAnagraphCustomers := Value;
  AssignUserList;
  if Assigned(FdblcbAnagraphCustomers) then
    FdblcbAnagraphCustomers.OnChange := dblcbAnagraphCustomersChange;
end;

procedure TCarBookingClientController.SetedCarColor(const Value: TUniEdit);
begin
  FedCarColor := Value;
end;

procedure TCarBookingClientController.SetedCarModel(const Value: TUniEdit);
begin
  FedCarModel := Value;
end;

procedure TCarBookingClientController.SetedCarNumberPlate(const Value: TUniEdit);
begin
  FedCarNumberPlate := Value;
end;

procedure TCarBookingClientController.SetedCustomerEmail(const Value: TUniEdit);
begin
  FedCustomerEmail := Value;
end;

procedure TCarBookingClientController.SetEdCustomerPhone(const Value: TUniEdit);
begin
  FEdCustomerPhone := Value;
end;

procedure TCarBookingClientController.SetedFirstName(const Value: TUniEdit);
begin
  FedFirstName := Value;
end;

procedure TCarBookingClientController.SetEdFullAddress(const Value: TUniEdit);
begin
  FEdFullAddress := Value;
  // EdFullAddressEnter
  if Assigned(FEdFullAddress) then
  begin
    FEdFullAddress.OnEnter := EdFullAddressEnter;
    // EdFullAddressExit
    FEdFullAddress.OnExit := EdFullAddressExit;
  end;

end;

procedure TCarBookingClientController.SetEdLastName(const Value: TUniEdit);
begin
  FEdLastName := Value;
end;

procedure TCarBookingClientController.SetedReturnAddress(const Value: TUniEdit);
begin
  FedReturnAddress := Value;
  // edReturnAddressEnter
  if Assigned(FedReturnAddress) then
  begin
    FedReturnAddress.OnEnter := edReturnAddressEnter;
    // edReturnAddressExit
    FedReturnAddress.OnExit := edReturnAddressExit;
  end;

end;

procedure TCarBookingClientController.SetlbSelectCustomer(const Value: TUniLabel);
begin
  FlbSelectCustomer := Value;
end;

procedure TCarBookingClientController.SetUsersList(const Value: IAnagraphViews);
begin
  FUsersList := Value;
  AssignUserList;
end;

end.
