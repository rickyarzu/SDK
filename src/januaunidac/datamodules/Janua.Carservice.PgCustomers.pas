unit Janua.Carservice.PgCustomers;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // JOrm.Documents.Impl Booking
  Janua.Carservice.Intf,
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf, Janua.Cloud.Types,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  // Janua Orm unitTest
  JOrm.System.Intf,
  // Januaproject
  udmPgStorage, Janua.Unidac.Connection;

type
  TdmPgCarServiceCustomers = class(TdmPgStorage)
    qryBooking: TUniQuery;
    qryBookingid: TLargeintField;
    qryBookingoffice_id: TIntegerField;
    qryBookingjguid: TGuidField;
    qryBookingdb_schema_id: TIntegerField;
    qryBookinguser_insert: TIntegerField;
    qryBookinginsert_date: TDateTimeField;
    qryBookingcustomer_id: TIntegerField;
    qryBookingstate_id: TSmallintField;
    qryBookingbranch_id: TIntegerField;
    qryBookingan_last_name: TWideStringField;
    qryBookingan_vat_id: TSmallintField;
    qryBookingan_address: TWideStringField;
    qryBookingan_postal_code: TWideStringField;
    qryBookingan_fiscal_code: TWideStringField;
    qryBookingan_town: TWideStringField;
    qryBookingan_phone: TWideStringField;
    qryBookingbranch_address: TWideStringField;
    qryBookingbranch_postal_code: TWideStringField;
    qryBookingbranch_town: TWideStringField;
    qryBookingbranch_phone: TWideStringField;
    qryBookingcust_first_name: TWideStringField;
    qryBookingcust_last_name: TWideStringField;
    qryBookingfull_address: TWideStringField;
    qryBookingcust_cellular: TWideStringField;
    qryBookingcust_email: TWideStringField;
    qryBookingvehicle_model: TWideStringField;
    qryBookingvehicle_color: TWideStringField;
    qryBookingvehicle_numberplate: TWideStringField;
    qryPickup: TUniQuery;
    qryPickupworkingday: TDateField;
    qryPickupslot_id: TSmallintField;
    qryPickupbooking_id: TLargeintField;
    qryPickupfrom_id: TIntegerField;
    qryPickupto_id: TIntegerField;
    qryPickupstate_id: TSmallintField;
    qryPickupbooked: TBooleanField;
    qryPickupslot_des: TWideStringField;
    qryPickupjguid: TGuidField;
    qryDelivery: TUniQuery;
    qryDeliveryworkingday: TDateField;
    qryDeliveryslot_id: TSmallintField;
    qryDeliverybooking_id: TLargeintField;
    qryDeliveryfrom_id: TIntegerField;
    qryDeliveryto_id: TIntegerField;
    qryDeliverystate_id: TSmallintField;
    qryDeliverybooked: TBooleanField;
    qryDeliveryslot_des: TWideStringField;
    qryDeliveryjguid: TGuidField;
    qryTimeTable: TUniQuery;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    GuidField1: TGuidField;
    qryBookingpickup_day: TDateField;
    qryBookingpickup_slot_id: TSmallintField;
    qryBookingreturn_day: TDateField;
    qryBookingreturn_slot_id: TSmallintField;
    qryBookingservice_name: TWideStringField;
    qryBookingservice_address: TWideMemoField;
    qryBookingan_email: TWideStringField;
    qryBookingan_cellular: TWideStringField;
    qryBookingpickup_address: TWideMemoField;
    qryBookingreturn_address: TWideMemoField;
    qryBookingpickup_time: TWideStringField;
    qryBookingreturn_time: TWideStringField;
    qryBookingpickup_date: TDateField;
    qryBookingreturn_date: TDateField;
    qryBookingdriver1_id: TIntegerField;
    qryBookingdriver2_id: TIntegerField;
    qryBookingdriver1_email: TWideStringField;
    qryBookingdriver2_email: TWideStringField;
    qryBookingdriver1_cellular: TWideStringField;
    qryBookingdriver2_cellular: TWideStringField;
    qryBookingpickup_jguid: TGuidField;
    qryBookingreturn_jguid: TGuidField;
    qryBookingpickup2_address: TWideMemoField;
    qryBookingreturn2_address: TWideMemoField;
    qryBookingpickup_slot_delivery: TWideStringField;
    qryBookingreturn_slot_delivery: TWideStringField;
    qryDeliverydriver_anagraph_id: TIntegerField;
    qryDeliveryan_cellular: TWideStringField;
    qryDeliveryan_email: TWideStringField;
    qryDeliveryfrom_latitude: TFloatField;
    qryDeliveryfrom_longitude: TFloatField;
    qryDeliveryfrom_full_address: TWideStringField;
    qryDeliveryto_latitude: TFloatField;
    qryDeliveryto_longitude: TFloatField;
    qryDeliveryto_full_address: TWideStringField;
    qryDeliveryslot_delivery: TWideStringField;
    qryPickupdriver_anagraph_id: TIntegerField;
    qryPickupan_cellular: TWideStringField;
    qryPickupan_email: TWideStringField;
    qryPickupfrom_latitude: TFloatField;
    qryPickupfrom_longitude: TFloatField;
    qryPickupfrom_full_address: TWideStringField;
    qryPickupto_latitude: TFloatField;
    qryPickupto_longitude: TFloatField;
    qryPickupto_full_address: TWideStringField;
    qryPickupslot_delivery: TWideStringField;
    qryTimeTabledriver_anagraph_id: TIntegerField;
    qryTimeTablean_cellular: TWideStringField;
    qryTimeTablean_email: TWideStringField;
    qryTimeTablefrom_latitude: TFloatField;
    qryTimeTablefrom_longitude: TFloatField;
    qryTimeTablefrom_full_address: TWideStringField;
    qryTimeTableto_latitude: TFloatField;
    qryTimeTableto_longitude: TFloatField;
    qryTimeTableto_full_address: TWideStringField;
    qryTimeTableslot_delivery: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FBookingRecord: IBookingHeadView;
    FHasReturn: Boolean;

    FNotFound: Boolean;
    FMessage: TLandingMessage;
    FCSCustomerLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder;
    FCSCustomerConfMsgBuilder: IJanuaCSCustConfirmationMsgBuilder;
    FPickupSlot: ITimeTableSlot;
    FDeliverySlot: ITimeTableSlot;

    procedure SetBookingRecord(const Value: IBookingHeadView);
    function LocalStringToGUID(const aParam: string): TGUID;
  protected
    procedure FlushLog;
    procedure FlushErr;
  public
    { Public declarations }
    function OpenBooking(const aGUID: TGUID): Boolean;
    procedure RefreshDetails; override;
    function WebResponse(const aGUID: string; out aPage: string): integer;
    function WebConfirmation(const aParams: TStrings; out aPage: string): integer;
  public
    property BookingRecord: IBookingHeadView read FBookingRecord write SetBookingRecord;
  end;

var
  dmPgCarServiceCustomers: TdmPgCarServiceCustomers;

implementation

uses JOrm.Carservice.Booking.Impl, Janua.Orm.Impl, Janua.Application.Framework, Janua.Core.Functions,
  System.StrUtils, Janua.Core.Html;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmPgCarServiceCustomers }

procedure TdmPgCarServiceCustomers.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FBookingRecord := TBookingHeadView.Create('CarBooking');
  // Important both Booking Record and It's Two Records have a recordset Assigned.
  FBookingRecord.DBDataset := qryBooking;
  // Detail is the TimeTable Dataset
  FBookingRecord.TimeTable.CurrentRecord.DBDataset := qryTimeTable;

  FBookingRecord.PickupDateTime.DBDataset := qryPickup;
  FBookingRecord.DeliveryDateTime.DBDataset := qryDelivery;
end;

procedure TdmPgCarServiceCustomers.FlushErr;
begin
  var
  logTitle := StringReplace(FBookingRecord.GUIDString, '}', '', []);
  logTitle := StringReplace(logTitle, '{', '', []);
  var
  sDate := FormatDateTime('yyyymmddhhnn', Now);

  TJanuaLogger.SaveLogToFile(sDate + '_' + logTitle + 'err.json');
end;

procedure TdmPgCarServiceCustomers.FlushLog;
begin
  var
  logTitle := StringReplace(FBookingRecord.GUIDString, '}', '', []);
  logTitle := StringReplace(logTitle, '{', '', []);
  var
  sDate := FormatDateTime('yyyymmddhhnn', Now);

  TJanuaLogger.SaveLogToFile(sDate + '_' + logTitle + 'log.json');
end;

function TdmPgCarServiceCustomers.LocalStringToGUID(const aParam: string): TGUID;
begin
  Result := StringToGUID(IfThen(Copy(aParam, 1, 1) = '{', aParam, '{' + aParam + '}'));
end;

function TdmPgCarServiceCustomers.OpenBooking(const aGUID: TGUID): Boolean;
begin
  Result := not aGUID.IsEmpty;
  if Result then
  begin
    qryBooking.Close;
    qryBooking.Params[0].AsGuid := aGUID;
    qryBooking.Open;
    Result := qryBooking.RecordCount > 0;
    if Result then
    begin
      RefreshDetails;
      Result := qryPickup.RecordCount > 0;
    end;
  end;

  // if A booking is found then the record is loaded instead it should be cleared to clean dirt :)
  if Result then
  begin
    FBookingRecord.LoadFromDataset;
    FBookingRecord.HasReturn := FHasReturn;
  end
  else
    FBookingRecord.Clear;
end;

procedure TdmPgCarServiceCustomers.RefreshDetails;
begin
  inherited;
  qryTimeTable.Close;
  qryTimeTable.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryTimeTable.Open;
  FHasReturn := qryTimeTable.RecordCount > 1;

  qryPickup.Close;
  qryPickup.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryPickup.Open;
{$IFDEF DEBUG}var
  i := qryPickup.RecordCount; {$ENDIF}
  qryDelivery.Close;
  qryDelivery.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryDelivery.Params[1].AsBoolean := FHasReturn;
  qryDelivery.Open;
{$IFDEF DEBUG} i := qryDelivery.RecordCount; {$ENDIF}
end;

procedure TdmPgCarServiceCustomers.SetBookingRecord(const Value: IBookingHeadView);
begin
  FBookingRecord := Value;
end;

function TdmPgCarServiceCustomers.WebConfirmation(const aParams: TStrings; out aPage: string): integer;
  procedure SetCustConfirmationMsgBuilder;
  begin
    if FBookingRecord.HasReturn then
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationMsgBuilder, FCSCustomerConfMsgBuilder)
    else
      TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationNRMsgBuilder,
        FCSCustomerConfMsgBuilder);
  end;

begin
  var
  sGUID := aParams.Values['guid'];
  if (sGUID <> '') then
  begin
    var
    aGUID := LocalStringToGUID(sGUID);
    if OpenBooking(aGUID) then
    begin
      SetCustConfirmationMsgBuilder;
      FCSCustomerConfMsgBuilder.Dataset := qryBooking;
      FCSCustomerConfMsgBuilder.LoadSettings;
      var
      lMessage := FCSCustomerConfMsgBuilder.GenerateLandingMessage;
      aPage := lMessage.Text;
    end;
  end;
end;

function TdmPgCarServiceCustomers.WebResponse(const aGUID: string; out aPage: string): integer;
  procedure GenerateNotFound;
  begin
    aPage := TJanuaCoreOS.ReadWebFile('customer_confirmation_404.html');
    Result := 404;
  end;

  procedure GenerateError;
  begin
    aPage := TJanuaCoreOS.ReadWebFile('customer_confirmation_503.html');
    Result := 503;
  end;

begin
  if aGUID <> '' then
  begin
    try
      var
      lGUID := LocalStringToGUID(aGUID);
      if OpenBooking(lGUID) then
      begin
        Result := 200;
        aPage := TJanuaCoreOS.ReadWebFile('customer_confirmation.html');

        if FBookingRecord.HasReturn then
          TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgBuilder,
            FCSCustomerLandingMsgBuilder)
        else
          TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgNRBuilder,
            FCSCustomerLandingMsgBuilder);

        FCSCustomerLandingMsgBuilder.Dataset := qryBooking;
        FCSCustomerLandingMsgBuilder.LoadSettings;
        FMessage := FCSCustomerLandingMsgBuilder.GenerateLandingMessage;

        if not TryHtmlReplace(aPage, 'Text', FMessage.Text) then
          raise Exception.Create('Error Message');

        HtmlReplace(aPage, 'jguid', aGUID);

        FPickupSlot := TTimeTableSlot.Create();
        FDeliverySlot := TTimeTableSlot.Create();

        FPickupSlot.Assign(FBookingRecord.PickupDateTime);
        FDeliverySlot.Assign(FBookingRecord.DeliveryDateTime);

        FPickupSlot.Booked.AsBoolean := False;
        FPickupSlot.IsFree.AsBoolean := True;
        FDeliverySlot.Booked.AsBoolean := False;
        FDeliverySlot.IsFree.AsBoolean := True;

        { framePickup.TimeTableSlot := FPickupSlot; }
        var
        lbPickupDate := FPickupSlot.Workingday.AsString;
        var
        lbPickupTime := FPickupSlot.SlotDes.AsString;

        HtmlReplace(aPage, 'pickup_date', lbPickupDate);
        HtmlReplace(aPage, 'pickup_time', lbPickupTime);

        // A Booking can be One Way Pickup or have a Delivery (Return) Slot if not then
        if FBookingRecord.HasReturn then
        begin
          var
          lbDeliveryDate := FDeliverySlot.Workingday.AsString;
          var
          lbDeliveryTime := FDeliverySlot.SlotDelivery.AsString;

          HtmlReplace(aPage, 'return_date', lbDeliveryDate);
          HtmlReplace(aPage, 'return_time', lbDeliveryTime);

          HtmlReplace(aPage, 'Restituzione', '/Restituzione');
          HtmlReplace(aPage, 'visibility_restituzione', '');
          HtmlReplace(aPage, 'checked_return', '');

          { if Pos('$$Restituzione$$', aPage) > 0 then
            aPage := StringReplace(aPage, '$$Restituzione$$', '/Restituzione', [rfReplaceAll, rfIgnoreCase ]);

            if Pos('$$visibility_restituzione$$', aPage) > 0 then
            aPage := StringReplace(aPage, '$$visibility_restituzione$$', '', [rfReplaceAll, rfIgnoreCase]);

            // not checked by default
            if Pos('$$checked_return$$', aPage) > 0 then
            aPage := StringReplace(aPage, '$$checked_return$$', 'checked', [rfReplaceAll, rfIgnoreCase]); }
        end
        else
        begin
          HtmlReplace(aPage, 'Restituzione', '');
          HtmlReplace(aPage, 'visibility_restituzione', 'visually-hidden');
          HtmlReplace(aPage, 'checked_return', 'checked');

          { aPage.Replace('$$Restituzione$$', '');
            aPage.Replace('$$visibility_restituzione$$', 'visually-hidden');
            aPage.Replace('$$checked_return$$', 'checked'); }
        end
      end
      else
        GenerateNotFound;

      FlushLog;
    except
      on e: Exception do
      begin
        GenerateError;
        { TJanuaCoreOS.PublicWriteError(Sender: TObject; aProcedureName, sMessage: string; e: Exception;
          doraise: Boolean = True): TJanuaLogRecord; }
        TJanuaCoreOS.PublicWriteError(self, 'WebResponse', 'Customer Confirmation' + aGUID, e, False);
      end;
    end;
  end
  else
    GenerateNotFound;

end;

end.
