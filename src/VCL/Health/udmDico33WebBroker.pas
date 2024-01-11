unit udmDico33WebBroker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess,
  UWebGMapsCommon, UWebGMapsGeocoding, UniProvider, PostgreSQLUniProvider, Janua.Unidac.Connection;

type
  TdmDico33WebBroker = class(TdmJanuaPostgresModel)
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    spBooking: TUniStoredProc;
    spAssignBooking: TUniStoredProc;
    qryBookingInstitutes: TUniQuery;
    qryBookingInstitutesdistance: TFloatField;
    qryBookingInstitutesanagraph_id: TIntegerField;
    qryBookingInstitutesan_title: TWideStringField;
    qryBookingInstitutesan_address: TWideStringField;
    qryBookingInstitutesan_last_name: TWideStringField;
    qryBookingInstitutesfull_address: TWideMemoField;
    qryBookingInstitutesan_phone: TWideStringField;
    qryBookingInstitutesan_fax: TWideStringField;
    qryBookingInstitutesan_email: TWideStringField;
    qryBookingInstitutesan_postal_code: TWideStringField;
    qryBookingInstitutesan_town: TWideStringField;
    qryBookingInstitutesan_postal_code_1: TWideStringField;
    qryBookingInstitutesan_state_province: TWideStringField;
    qryBookingInstituteslatitude: TFloatField;
    qryBookingInstituteslongitude: TFloatField;
  private
    FBookingID: Int64;
    FSearchID: Int64;
    procedure SetBookingID(const Value: Int64);
    procedure SetSearchID(const Value: Int64);
    { Private declarations }
  public
    { Public declarations }
    function DoBooking(aSearchID: Int64; bAuto: boolean): Int64;
    procedure GetBooking(aBookingID: Int64);
    function AssignBooking(aSession: string; aBookingID: Int64): boolean;
    property BookingID: Int64 read FBookingID write SetBookingID;
    property SearchID: Int64 read FSearchID write SetSearchID;
  end;

var
  dmDico33WebBroker: TdmDico33WebBroker;

implementation

{$R *.dfm}
{ TdmDico33WebBroker }

function TdmDico33WebBroker.AssignBooking(aSession: string; aBookingID: Int64): boolean;
begin
  self.SessionKey := aSession;
  if self.CheckSessionKey(aSession) then
  begin
    // SELECT health.assignbooking(:p_session_id, :p_booking_id)
    self.FBookingID := aBookingID;
    self.spAssignBooking.ParamByName('p_session_id').AsLargeInt := self.SessionUID;
    self.FBookingID := aBookingID;
    self.spAssignBooking.ParamByName('p_booking_id').AsLargeInt := aBookingID;
    self.spAssignBooking.Execute;
    Result := self.spAssignBooking.ParamByName('result').AsBoolean;
    GetBooking(aBookingID);
  end
  else
    Result := False;
end;

function TdmDico33WebBroker.DoBooking(aSearchID: Int64; bAuto: boolean): Int64;
begin
  FSearchID := aSearchID;
  self.spBooking.ParamByName('p_storedsearch').AsLargeInt := aSearchID;
  self.spBooking.ParamByName('p_auto').AsBoolean := bAuto;
  self.spBooking.Execute;
  Result := self.spBooking.ParamByName('result').AsLargeInt;
  FBookingID := Result;
end;

procedure TdmDico33WebBroker.GetBooking(aBookingID: Int64);
begin
    qryBookingInstitutes.Close;
    self.qryBookingInstitutes.ParamByName('booking_id').AsLargeInt := aBookingID;
    self.qryBookingInstitutes.Open;
end;

procedure TdmDico33WebBroker.SetBookingID(const Value: Int64);
begin
  FBookingID := Value;
end;

procedure TdmDico33WebBroker.SetSearchID(const Value: Int64);
begin
  FSearchID := Value;
end;

end.
