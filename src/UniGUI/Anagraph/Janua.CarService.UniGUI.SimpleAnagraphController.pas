unit Janua.CarService.UniGUI.SimpleAnagraphController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniEdit,
  uniImageList, uniButton, uniBitBtn, UniFSButton, uniPanel,
  // Januaproject Do not Use UNIGUI Interposers at this level ....
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types, JOrm.Anagraph.Intf,
  Janua.UniGUI.dlgSearchGoogleAddress, Janua.Core.Entities, Janua.UniGUI.Controller;

type
  TSimpleAnagraphController = class(TJanuaUniGUIController)
    { TframeUniGUISimpleAnagraph }
  private
    FlbAddressPlace: TUniLabel;
    FedtAddressNumber: TUniEdit;
    FedtProfileAddress: TUniEdit;
    FedtPhone: TUniEdit;
    FedtCellularPhone: TUniEdit;
    FlbProfileCompanyName: TUniLabel;
    FlbTown: TUniLabel;
    FlbAddressCode: TUniLabel;
    FtxtLatitude: TUniLabel;
    FlbEmail: TUniLabel;
    FedAddressPlace: TUniEdit;
    FedtStateProvinceCode: TUniEdit;
    FlbLatLegend: TUniLabel;
    FlbProvince: TUniLabel;
    FbtnSearch: TUniFSButton;
    FedtProfileCompanyName: TUniEdit;
    FlbAddressNumber: TUniLabel;
    FedtTown: TUniEdit;
    FedtAddressCode: TUniEdit;
    FlbProfileAddress: TUniLabel;
    FUniNativeImageList1: TUniNativeImageList;
    FtxtLongitude: TUniLabel;
    FlbPhone: TUniLabel;
    FlbLongitude: TUniLabel;
    FedtEMail: TUniEdit;
    FlbCellularPhone: TUniLabel;
  protected
    procedure SetbtnSearch(const Value: TUniFSButton);
    procedure SetedAddressPlace(const Value: TUniEdit);
    procedure SetedtAddressCode(const Value: TUniEdit);
    procedure SetedtAddressNumber(const Value: TUniEdit);
    procedure SetedtCellularPhone(const Value: TUniEdit);
    procedure SetedtEMail(const Value: TUniEdit);
    procedure SetedtPhone(const Value: TUniEdit);
    procedure SetedtProfileAddress(const Value: TUniEdit);
    procedure SetedtProfileCompanyName(const Value: TUniEdit);
    procedure SetedtStateProvinceCode(const Value: TUniEdit);
    procedure SetedtTown(const Value: TUniEdit);
    procedure SetlbAddressCode(const Value: TUniLabel);
    procedure SetlbAddressNumber(const Value: TUniLabel);
    procedure SetlbAddressPlace(const Value: TUniLabel);
    procedure SetlbCellularPhone(const Value: TUniLabel);
    procedure SetlbEmail(const Value: TUniLabel);
    procedure SetlbLatLegend(const Value: TUniLabel);
    procedure SetlbLongitude(const Value: TUniLabel);
    procedure SetlbPhone(const Value: TUniLabel);
    procedure SetlbProfileAddress(const Value: TUniLabel);
    procedure SetlbProfileCompanyName(const Value: TUniLabel);
    procedure SetlbProvince(const Value: TUniLabel);
    procedure SetlbTown(const Value: TUniLabel);
    procedure SettxtLatitude(const Value: TUniLabel);
    procedure SettxtLongitude(const Value: TUniLabel);
    procedure SetUniNativeImageList1(const Value: TUniNativeImageList);
    { Janua.UniGUI.Controller -> }
  published
    property UniNativeImageList1: TUniNativeImageList read FUniNativeImageList1 write SetUniNativeImageList1;
    property lbProfileCompanyName: TUniLabel read FlbProfileCompanyName write SetlbProfileCompanyName;
    property edtProfileCompanyName: TUniEdit read FedtProfileCompanyName write SetedtProfileCompanyName;
    property lbProfileAddress: TUniLabel read FlbProfileAddress write SetlbProfileAddress;
    property edtProfileAddress: TUniEdit read FedtProfileAddress write SetedtProfileAddress;
    property btnSearch: TUniFSButton read FbtnSearch write SetbtnSearch;
    property lbAddressCode: TUniLabel read FlbAddressCode write SetlbAddressCode;
    property edtAddressCode: TUniEdit read FedtAddressCode write SetedtAddressCode;
    property edtStateProvinceCode: TUniEdit read FedtStateProvinceCode write SetedtStateProvinceCode;
    property lbProvince: TUniLabel read FlbProvince write SetlbProvince;
    property lbTown: TUniLabel read FlbTown write SetlbTown;
    property edtTown: TUniEdit read FedtTown write SetedtTown;
    property lbPhone: TUniLabel read FlbPhone write SetlbPhone;
    property edtPhone: TUniEdit read FedtPhone write SetedtPhone;
    property lbCellularPhone: TUniLabel read FlbCellularPhone write SetlbCellularPhone;
    property edtCellularPhone: TUniEdit read FedtCellularPhone write SetedtCellularPhone;
    property lbEmail: TUniLabel read FlbEmail write SetlbEmail;
    property edtEMail: TUniEdit read FedtEMail write SetedtEMail;
    property edtAddressNumber: TUniEdit read FedtAddressNumber write SetedtAddressNumber;
    property edAddressPlace: TUniEdit read FedAddressPlace write SetedAddressPlace;
    property lbAddressNumber: TUniLabel read FlbAddressNumber write SetlbAddressNumber;
    property lbAddressPlace: TUniLabel read FlbAddressPlace write SetlbAddressPlace;
    property lbLatLegend: TUniLabel read FlbLatLegend write SetlbLatLegend;
    property lbLongitude: TUniLabel read FlbLongitude write SetlbLongitude;
    property txtLatitude: TUniLabel read FtxtLatitude write SettxtLatitude;
    property txtLongitude: TUniLabel read FtxtLongitude write SettxtLongitude;
  private
    FAnagraph: IAnagraphView;
    FAnagraphID: Integer;
    FAddress: IAnAddress;
    FRecordAddress: TJanuaRecordAddress;
    FGoogleSearchDialog: TUniGoogleSearchDialog;
    FOnSaveAddressRecord: TSaveAddressEvent;
    FOnSaveAnagraph: TSaveAnagraphEvent;
    procedure SetAnagraph(const Value: IAnagraphView);
    procedure SetAddress(const Value: IAnAddress);
    procedure SetRecordAddress(const Value: TJanuaRecordAddress);
    procedure SetOnSaveAddressRecord(const Value: TSaveAddressEvent);
    procedure SetOnSaveAnagraph(const Value: TSaveAnagraphEvent);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: Boolean; override;
  public
    procedure NewAnagraph; virtual;
    procedure SaveAnagraph; virtual;
    procedure RefreshAnagraph; virtual;
    procedure NewAddress; virtual;
    procedure SaveAddress; virtual;
    procedure RefreshAddress; virtual;
    procedure btnSearchClick(Sender: TObject);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithAddress(AOwner: TComponent; const aAddress: IAnAddress);
    property Anagraph: IAnagraphView read FAnagraph write SetAnagraph;
    property Address: IAnAddress read FAddress write SetAddress;
    property RecordAddress: TJanuaRecordAddress read FRecordAddress write SetRecordAddress;
    property OnSaveAnagraph: TSaveAnagraphEvent read FOnSaveAnagraph write SetOnSaveAnagraph;
    property OnSaveAddressRecord: TSaveAddressEvent read FOnSaveAddressRecord write SetOnSaveAddressRecord;
  end;

type
  TAccountingInfoController = class(TSimpleAnagraphController)
  private
    FSimpleAnagraphController: TSimpleAnagraphController;
    FAccountAnagraph: IAnagraphView;
    FlbEuVatCode: TUniLabel;
    FedtVATCode: TUniEdit;
    FlbIDNumber: TUniLabel;
    FlbFiscalCode: TUniLabel;
    FedSDINumber: TUniEdit;
    FbtnCopyAddress: TUniFSButton;
    FedtFiscalCode: TUniEdit;
  protected
    procedure SetSimpleAnagraphController(const Value: TSimpleAnagraphController);
    procedure SetAccountAnagraph(const Value: IAnagraphView);
    function GetAccountAnagraph: IAnagraphView;
    procedure SetbtnCopyAddress(const Value: TUniFSButton);
    procedure SetedSDINumber(const Value: TUniEdit);
    procedure SetedtFiscalCode(const Value: TUniEdit);
    procedure SetedtVATCode(const Value: TUniEdit);
    procedure SetlbEuVatCode(const Value: TUniLabel);
    procedure SetlbFiscalCode(const Value: TUniLabel);
    procedure SetlbIDNumber(const Value: TUniLabel);
  public
    procedure NewAnagraph; override;
    procedure SaveAnagraph; override;
    procedure RefreshAnagraph; override;
    procedure NewAddress; override;
    procedure SaveAddress; override;
    procedure RefreshAddress; override;
  public
    { Public declarations }
    property AccountAnagraph: IAnagraphView read GetAccountAnagraph write SetAccountAnagraph;
  published
    property SimpleAnagraphController: TSimpleAnagraphController read FSimpleAnagraphController
      write SetSimpleAnagraphController;
    property edSDINumber: TUniEdit read FedSDINumber write SetedSDINumber;
    property edtVATCode: TUniEdit read FedtVATCode write SetedtVATCode;
    property lbIDNumber: TUniLabel read FlbIDNumber write SetlbIDNumber;
    property lbEuVatCode: TUniLabel read FlbEuVatCode write SetlbEuVatCode;
    property lbFiscalCode: TUniLabel read FlbFiscalCode write SetlbFiscalCode;
    property edtFiscalCode: TUniEdit read FedtFiscalCode write SetedtFiscalCode;
    property btnCopyAddress: TUniFSButton read FbtnCopyAddress write SetbtnCopyAddress;
  end;

procedure Register;

implementation

uses
  Janua.Core.Functions, Janua.Application.Framework, uniGUIApplication, System.Math, System.StrUtils;

procedure Register;
begin
  RegisterComponents('Janua UniGUI Controllers', [TSimpleAnagraphController, TAccountingInfoController]);
end;

{ TSimpleAnagraphController }

procedure TSimpleAnagraphController.btnSearchClick(Sender: TObject);
begin
  FGoogleSearchDialog.Execute(edtProfileAddress.Text);
end;

constructor TSimpleAnagraphController.Create(AOwner: TComponent);
begin
  inherited;
  FGoogleSearchDialog := TUniGoogleSearchDialog.Create(Self);
  {
    edtProfileCompanyName

    edAddressPlace
    edtStateProvinceCode
  }
  FGoogleSearchDialog.edtPostalCode := edtAddressCode;
  FGoogleSearchDialog.edtSearchAddress := edtProfileAddress;
  FGoogleSearchDialog.edtProvinceName := nil;
  FGoogleSearchDialog.edtProfileAddress := edAddressPlace;
  FGoogleSearchDialog.edtCountry := nil;
  FGoogleSearchDialog.edtNumber := edtAddressNumber;
  FGoogleSearchDialog.edtStateProvince := edtStateProvinceCode;
  FGoogleSearchDialog.edtRegion := nil;
  FGoogleSearchDialog.edtTown := edtTown;
  FGoogleSearchDialog.lbLatitude := txtLatitude;
  FGoogleSearchDialog.lbLongitude := txtLongitude;
  FGoogleSearchDialog.RecordAddress := Address;
  FGoogleSearchDialog.RecordAnagraph := nil;
  FGoogleSearchDialog.edtFullAddress := edtProfileAddress;
  FGoogleSearchDialog.RecordAnagraph := FAnagraph as IAnagraph;
end;

constructor TSimpleAnagraphController.CreateWithAddress(AOwner: TComponent; const aAddress: IAnAddress);
begin
  FAddress := aAddress;
  RefreshAddress;
end;

function TSimpleAnagraphController.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := Enabled and inherited and notDesigning;
      if Result then
      begin
        {
          edtProfileCompanyName
        }
        FGoogleSearchDialog.edtPostalCode := edtAddressCode;
        FGoogleSearchDialog.edtSearchAddress := edtProfileAddress;
        FGoogleSearchDialog.edtProvinceName := nil;
        FGoogleSearchDialog.edtProfileAddress := edAddressPlace;
        FGoogleSearchDialog.edtCountry := nil;
        FGoogleSearchDialog.edtNumber := edtAddressNumber;
        FGoogleSearchDialog.edtStateProvince := edtStateProvinceCode;
        FGoogleSearchDialog.edtRegion := nil;
        FGoogleSearchDialog.edtTown := edtTown;
        FGoogleSearchDialog.lbLatitude := txtLatitude;
        FGoogleSearchDialog.lbLongitude := txtLongitude;
        FGoogleSearchDialog.RecordAddress := Address;
        FGoogleSearchDialog.RecordAnagraph := nil;
        FGoogleSearchDialog.edtFullAddress := edtProfileAddress;
        FGoogleSearchDialog.RecordAnagraph := FAnagraph as IAnagraph;
        Result := True;
      end;
    except
      on e: exception do
        raise exception.Create('Error Message');
    end;
end;

procedure TSimpleAnagraphController.NewAddress;
begin
  FAddress.Clear;
  FAddress.AnagraphId.AsInteger := 0;
  FAddress.Id.AsInteger := 0;
  FAddress.DbSchemaId;
end;

procedure TSimpleAnagraphController.NewAnagraph;
begin
  Anagraph.Clear;
  Anagraph.AnagraphId.AsInteger := 0;
  Anagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
end;

procedure TSimpleAnagraphController.RefreshAddress;
begin
  edtProfileCompanyName.Text := FAddress.AddressName.AsString;
  edAddressPlace.Text := FAddress.Address.AsString;
  edtProfileAddress.Text := FAddress.FullAddress.AsString;
  edtTown.Text := FAddress.TownName.AsString;
  edtAddressNumber.Text := FAddress.AddressNumber.AsString;
  edtAddressCode.Text := FAddress.PostalCode.AsString;
  edtCellularPhone.Text := FAddress.Phone.AsString;
  edtEMail.Text := FAddress.Email.AsString;
  edtStateProvinceCode.Text := FAddress.StateProvince.AsString;
  txtLatitude.Text := FloatToStrDotted(FAddress.Latitude.AsFloat);
  txtLongitude.Text := FloatToStrDotted(FAddress.Longitude.AsFloat);
end;

procedure TSimpleAnagraphController.RefreshAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  edtProfileCompanyName.Text := Anagraph.AnLastName.AsString;
  edtProfileAddress.Text := Anagraph.AnAddress.AsString;
  edtTown.Text := Anagraph.AnTown.AsString;
  edtAddressNumber.Text := Anagraph.AnAddressNumber.AsString;
  edtAddressCode.Text := Anagraph.AnPostalCode.AsString;
  edtPhone.Text := Anagraph.AnPhone.AsString;
  edtCellularPhone.Text := Anagraph.AnCellular.AsString;
  edtEMail.Text := Anagraph.AnEmail.AsString;
  edtProfileAddress.Text := Anagraph.AnAddress.AsString;
  txtLatitude.Text := FloatToStrDotted(FAddress.Latitude.AsFloat);
  txtLongitude.Text := FloatToStrDotted(FAddress.Longitude.AsFloat);
end;

procedure TSimpleAnagraphController.SaveAddress;
begin

end;

procedure TSimpleAnagraphController.SaveAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  Anagraph.AnLastName.AsString := edtProfileCompanyName.Text;
  Anagraph.AnFullAddress.AsString := edtProfileAddress.Text;
  Anagraph.AnAddress.AsString := edtProfileAddress.Text;
  Anagraph.AnTown.AsString := edtTown.Text;
  Anagraph.AnAddressNumber.AsString := edtAddressNumber.Text;
  Anagraph.AnPostalCode.AsString := edtAddressCode.Text;
  Anagraph.AnPhone.AsString := edtPhone.Text;
  Anagraph.AnCellular.AsString := edtCellularPhone.Text;
  Anagraph.AnEmail.AsString := edtEMail.Text;
end;

procedure TSimpleAnagraphController.SetAddress(const Value: IAnAddress);
begin
  FAddress := Value;
end;

procedure TSimpleAnagraphController.SetAnagraph(const Value: IAnagraphView);
begin
  FAnagraph := Value;
  if Assigned(FAnagraph) then
    RefreshAnagraph;
end;

procedure TSimpleAnagraphController.SetbtnSearch(const Value: TUniFSButton);
begin
  FbtnSearch := Value;
end;

procedure TSimpleAnagraphController.SetedAddressPlace(const Value: TUniEdit);
begin
  FedAddressPlace := Value;
end;

procedure TSimpleAnagraphController.SetedtAddressCode(const Value: TUniEdit);
begin
  FedtAddressCode := Value;
end;

procedure TSimpleAnagraphController.SetedtAddressNumber(const Value: TUniEdit);
begin
  FedtAddressNumber := Value;
end;

procedure TSimpleAnagraphController.SetedtCellularPhone(const Value: TUniEdit);
begin
  FedtCellularPhone := Value;
end;

procedure TSimpleAnagraphController.SetedtEMail(const Value: TUniEdit);
begin
  FedtEMail := Value;
end;

procedure TSimpleAnagraphController.SetedtPhone(const Value: TUniEdit);
begin
  FedtPhone := Value;
end;

procedure TSimpleAnagraphController.SetedtProfileAddress(const Value: TUniEdit);
begin
  FedtProfileAddress := Value;
end;

procedure TSimpleAnagraphController.SetedtProfileCompanyName(const Value: TUniEdit);
begin
  FedtProfileCompanyName := Value;
end;

procedure TSimpleAnagraphController.SetedtStateProvinceCode(const Value: TUniEdit);
begin
  FedtStateProvinceCode := Value;
end;

procedure TSimpleAnagraphController.SetedtTown(const Value: TUniEdit);
begin
  FedtTown := Value;
end;

procedure TSimpleAnagraphController.SetlbAddressCode(const Value: TUniLabel);
begin
  FlbAddressCode := Value;
end;

procedure TSimpleAnagraphController.SetlbAddressNumber(const Value: TUniLabel);
begin
  FlbAddressNumber := Value;
end;

procedure TSimpleAnagraphController.SetlbAddressPlace(const Value: TUniLabel);
begin
  FlbAddressPlace := Value;
end;

procedure TSimpleAnagraphController.SetlbCellularPhone(const Value: TUniLabel);
begin
  FlbCellularPhone := Value;
end;

procedure TSimpleAnagraphController.SetlbEmail(const Value: TUniLabel);
begin
  FlbEmail := Value;
end;

procedure TSimpleAnagraphController.SetlbLatLegend(const Value: TUniLabel);
begin
  FlbLatLegend := Value;
end;

procedure TSimpleAnagraphController.SetlbLongitude(const Value: TUniLabel);
begin
  FlbLongitude := Value;
end;

procedure TSimpleAnagraphController.SetlbPhone(const Value: TUniLabel);
begin
  FlbPhone := Value;
end;

procedure TSimpleAnagraphController.SetlbProfileAddress(const Value: TUniLabel);
begin
  FlbProfileAddress := Value;
end;

procedure TSimpleAnagraphController.SetlbProfileCompanyName(const Value: TUniLabel);
begin
  FlbProfileCompanyName := Value;
end;

procedure TSimpleAnagraphController.SetlbProvince(const Value: TUniLabel);
begin
  FlbProvince := Value;
end;

procedure TSimpleAnagraphController.SetlbTown(const Value: TUniLabel);
begin
  FlbTown := Value;
end;

procedure TSimpleAnagraphController.SetOnSaveAddressRecord(const Value: TSaveAddressEvent);
begin
  FOnSaveAddressRecord := Value;
end;

procedure TSimpleAnagraphController.SetOnSaveAnagraph(const Value: TSaveAnagraphEvent);
begin
  FOnSaveAnagraph := Value;
end;

procedure TSimpleAnagraphController.SetRecordAddress(const Value: TJanuaRecordAddress);
begin
  FRecordAddress := Value;
end;

procedure TSimpleAnagraphController.SettxtLatitude(const Value: TUniLabel);
begin
  FtxtLatitude := Value;
end;

procedure TSimpleAnagraphController.SettxtLongitude(const Value: TUniLabel);
begin
  FtxtLongitude := Value;
end;

procedure TSimpleAnagraphController.SetUniNativeImageList1(const Value: TUniNativeImageList);
begin
  FUniNativeImageList1 := Value;
end;

{ TAccountingInfoController }

function TAccountingInfoController.GetAccountAnagraph: IAnagraphView;
begin
  Result := Anagraph
end;

procedure TAccountingInfoController.NewAddress;
begin
  inherited;

end;

procedure TAccountingInfoController.NewAnagraph;
begin
  inherited;

end;

procedure TAccountingInfoController.RefreshAddress;
begin
  inherited;

end;

procedure TAccountingInfoController.RefreshAnagraph;
begin
  inherited;

end;

procedure TAccountingInfoController.SaveAddress;
begin
  inherited;

end;

procedure TAccountingInfoController.SaveAnagraph;
begin
  inherited;

end;

procedure TAccountingInfoController.SetAccountAnagraph(const Value: IAnagraphView);
begin
  Anagraph := Value;
end;

procedure TAccountingInfoController.SetbtnCopyAddress(const Value: TUniFSButton);
begin
  FbtnCopyAddress := Value;
end;

procedure TAccountingInfoController.SetedSDINumber(const Value: TUniEdit);
begin
  FedSDINumber := Value;
end;

procedure TAccountingInfoController.SetedtFiscalCode(const Value: TUniEdit);
begin
  FedtFiscalCode := Value;
end;

procedure TAccountingInfoController.SetedtVATCode(const Value: TUniEdit);
begin
  FedtVATCode := Value;
end;

procedure TAccountingInfoController.SetlbEuVatCode(const Value: TUniLabel);
begin
  FlbEuVatCode := Value;
end;

procedure TAccountingInfoController.SetlbFiscalCode(const Value: TUniLabel);
begin
  FlbFiscalCode := Value;
end;

procedure TAccountingInfoController.SetlbIDNumber(const Value: TUniLabel);
begin
  FlbIDNumber := Value;
end;

procedure TAccountingInfoController.SetSimpleAnagraphController(const Value: TSimpleAnagraphController);
begin
  FSimpleAnagraphController := Value;
end;

end.
