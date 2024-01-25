unit Janua.CarService.UniGUI.frameCarBooking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,
  // DB
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DBAccess,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniEdit, uniDateTimePicker, uniLabel, uniButton,
  uniBitBtn, uniSpeedButton, uniHTMLFrame, uniMap, uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniDBEdit, Uni, UniGuidialogs, uniScrollBox,
  // Januaproject
  Janua.CarService.PgBooking, Janua.UniGUI.Interposers;

type
  TFrameCSBookingState = (fcsInsert, fcsEdit);

  TframeCarServiceUniGUIBooking = class(TUniFrame)
    pnlAddressLocation: TUniSimplePanel;
    dsRitiro: TDataSource;
    dsConsegna: TDataSource;
    dsBooking: TUniDataSource;
    dsUsers: TUniDataSource;
    UniScrollBox1: TUniScrollBox;
    dblcbAnagraphCustomers: TUniDBLookupComboBox;
    dtpPickup: TUniDateTimePicker;
    dtpDelivery: TUniDateTimePicker;
    lblLatitude: TUniLabel;
    lblLOngitude: TUniLabel;
    EdLastName: TUniEdit;
    EdFullAddress: TUniEdit;
    btnRicerca: TUniSpeedButton;
    edCarNumberPlate: TUniEdit;
    edCarColor: TUniEdit;
    EdCustomerPhone: TUniEdit;
    edCustomerEmail: TUniEdit;
    btnPrenota: TUniSpeedButton;
    edFirstName: TUniEdit;
    edCarModel: TUniEdit;
    procedure dblcbAnagraphCustomersChange(Sender: TObject);
    procedure btnPrenotaClick(Sender: TObject);
    procedure btnRicercaClick(Sender: TObject);
  private
    // FAnagraphID: Integer;
    class var Ctr: Integer;
  private
    FGUID: TGUID;
    FBookingState: TFrameCSBookingState;
    FCarServiceBookingDM: TdmPgCarServiceBookingStorage;
    // procedure SetAnagraphID(const Value: Integer);
    procedure SetGUID(const Value: TGUID);
    procedure SetBookingState(const Value: TFrameCSBookingState);
    function CheckBookingData: Boolean;
    procedure UpdateBooking(const aBooking: Boolean = False);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithStorage(AOwner: TComponent;
      aCarServiceBookingDM: TdmPgCarServiceBookingStorage); overload;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure RegisterAnagraph;
    procedure LoadBooking;
    // property AnagraphID: Integer read FAnagraphID write SetAnagraphID;
    property BookingState: TFrameCSBookingState read FBookingState write SetBookingState;
    property GUID: TGUID read FGUID write SetGUID;
  end;

implementation

uses
  JOrm.Anagraph.Intf, Janua.UniGUI.MainModule;

{$R *.dfm}
{ TframeCarServiceUniGUIBooking }

procedure TframeCarServiceUniGUIBooking.AfterConstruction;
begin
  inherited;
  dtpPickup.DateTime := Date() + 1;
  dtpDelivery.DateTime := Date() + 2;
end;

procedure TframeCarServiceUniGUIBooking.btnPrenotaClick(Sender: TObject);
begin
  if CheckBookingData then
  begin
    UpdateBooking(True);
  end
  else
    ShowMessage('Indicare almeno una data di prenotazione');
end;

procedure TframeCarServiceUniGUIBooking.btnRicercaClick(Sender: TObject);
begin
  UpdateBooking;
end;

function TframeCarServiceUniGUIBooking.CheckBookingData: Boolean;
var
  MinDate: TDateTime;
begin
  MinDate := StrToDate('30/12/1899');
  Result := (dtpPickup.DateTime > MinDate) or (dtpDelivery.DateTime > MinDate);
end;

constructor TframeCarServiceUniGUIBooking.CreateWithStorage(AOwner: TComponent;
  aCarServiceBookingDM: TdmPgCarServiceBookingStorage);
begin
  FCarServiceBookingDM := aCarServiceBookingDM;
  Create(AOwner);
end;

constructor TframeCarServiceUniGUIBooking.Create(AOwner: TComponent);
begin
  inherited;
  Inc(Ctr);
  Name := Name + Ctr.ToString;
  if not Assigned(FCarServiceBookingDM) then
  begin
    FCarServiceBookingDM := TdmPgCarServiceBookingStorage.Create(Self);
    FCarServiceBookingDM.UserProfile := UniMainModule.UserSessionVM.CurrentRecord.UserProfile;
    FCarServiceBookingDM.OfficeID := UniMainModule.UserSessionVM.CurrentRecord.UserProfile.
      AnagraphID.asinteger;
    FCarServiceBookingDM.UserSession := UniMainModule.UserSessionVM.CurrentRecord;
  end;
end;

procedure TframeCarServiceUniGUIBooking.dblcbAnagraphCustomersChange(Sender: TObject);
var
  adt: TDataset;
begin
  // se premo x è Null altrimenti se seleziono utente primo è 0 in caso di Nullo chiedo cosa fare
  if not(VarIsNull(dblcbAnagraphCustomers.KeyValue) or (dblcbAnagraphCustomers.KeyValue = 0)) then
  begin
    adt := dblcbAnagraphCustomers.ListSource.DataSet;
    FCarServiceBookingDM.customerId := adt.fieldByName('anagraph_id').asinteger;
    edFirstName.text := adt.fieldByName('an_name').AsString;
    EdLastName.text := adt.fieldByName('an_last_name').AsString;
    EdFullAddress.text := adt.fieldByName('an_address').AsString;
    EdCustomerPhone.text := adt.fieldByName('an_cellular').AsString;
    edCustomerEmail.text := adt.fieldByName('an_email').AsString;
    { edCarModel.text := adt.fieldByName('vehicle_model').AsString;
      edCarNumberPlate.text := adt.fieldByName('vehicle_numberplate').AsString;
      edCarColor.text := adt.fieldByName('vehicle_color').AsString; }
  end
  else
  begin
    // qui mettiamo un Dialog? del tipo sei sicuro di cancellare i dati?
    MessageDlg('Siete sicuri di cancellare i dati Inseriti?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
        case Res of
          mrYes:
            begin
              FCarServiceBookingDM.ClearCustomer;
              edFirstName.text := '';
              EdLastName.text := '';
              EdFullAddress.text := '';
              EdCustomerPhone.text := '';
              edCustomerEmail.text := '';
            end;
        end;
      end);
  end;
end;

destructor TframeCarServiceUniGUIBooking.Destroy;
begin
  Dec(Ctr);
  inherited;
end;

procedure TframeCarServiceUniGUIBooking.LoadBooking;
begin
  dtpPickup.DateTime := FCarServiceBookingDM.PickupDate;
  dtpDelivery.DateTime := FCarServiceBookingDM.DeliveryDate;
  edCarModel.text := FCarServiceBookingDM.BookingRecord.VehicleModel.AsString;
  edCarNumberPlate.text := FCarServiceBookingDM.BookingRecord.VehicleNumberplate.AsString;
  edFirstName.text := FCarServiceBookingDM.BookingRecord.CustFirstName.AsString;
  EdLastName.text := FCarServiceBookingDM.BookingRecord.CustLastName.AsString;
  EdFullAddress.text := FCarServiceBookingDM.BookingRecord.FullAddress.AsString;
  EdCustomerPhone.text := FCarServiceBookingDM.BookingRecord.CustCellular.AsString;
  edCustomerEmail.text := FCarServiceBookingDM.BookingRecord.CustEmail.AsString;
  edCarColor.text := FCarServiceBookingDM.BookingRecord.VehicleColor.AsString;
end;

procedure TframeCarServiceUniGUIBooking.RegisterAnagraph;
var
  AP: IAnagraphView;
begin
  { AP := UniMainModule.UserSessionVM.; }

end;

procedure TframeCarServiceUniGUIBooking.UpdateBooking(const aBooking: Boolean);
begin
  if dsRitiro.DataSet.state in [dsInsert, dsEdit] then
    dsRitiro.DataSet.Post;
  if dsConsegna.DataSet.state in [dsInsert, dsEdit] then
    dsConsegna.DataSet.Post;
  FCarServiceBookingDM.PickupDate := dtpPickup.DateTime;
  FCarServiceBookingDM.DeliveryDate := dtpDelivery.DateTime;
  FCarServiceBookingDM.BookingRecord.VehicleModel.AsString := edCarModel.text;
  FCarServiceBookingDM.BookingRecord.VehicleNumberplate.AsString := edCarNumberPlate.text;
  FCarServiceBookingDM.BookingRecord.CustFirstName.AsString := edFirstName.text;
  FCarServiceBookingDM.BookingRecord.CustLastName.AsString := EdLastName.text;
  FCarServiceBookingDM.BookingRecord.FullAddress.AsString := EdFullAddress.text;
  FCarServiceBookingDM.BookingRecord.CustCellular.AsString := EdCustomerPhone.text;
  FCarServiceBookingDM.BookingRecord.CustEmail.AsString := edCustomerEmail.text;
  FCarServiceBookingDM.BookingRecord.VehicleColor.AsString := edCarColor.text;
  if FCarServiceBookingDM.BookingRecord.checkBooking then
  begin
    FCarServiceBookingDM.PostRecord;
    FCarServiceBookingDM.SearchTimetable;
    if aBooking then
      ShowMessage('Prenotazione regolarmente completata');
  end
  else
    ShowMessage('Si prega di completare i dati non inseriri');
end;

// procedure TframeCarServiceUniGUIBooking.SetAnagraphID(const Value: Integer);
// begin
// FAnagraphID := Value;
// end;

procedure TframeCarServiceUniGUIBooking.SetBookingState(const Value: TFrameCSBookingState);
begin
  FBookingState := Value;
  if Value = fcsInsert then
    FGUID := TGUID.NewGuid;

end;

procedure TframeCarServiceUniGUIBooking.SetGUID(const Value: TGUID);
begin
  FGUID := Value;
end;

end.
