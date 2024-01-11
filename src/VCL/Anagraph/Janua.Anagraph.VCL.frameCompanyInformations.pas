unit Janua.Anagraph.VCL.frameCompanyInformations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls,

  // Janua Interposers
  Janua.VCL.Interposers, uJanuaVCLFrame, Janua.Bindings.Intf, Janua.Anagraph.VCL.frameBankAccount,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  JOrm.Anagraph.Intf, Janua.Anagraph.ViewModel.Intf, VCL.ComCtrls, Janua.VCL.frameAddress, VCL.ExtCtrls,
  Janua.VCL.frameAddressVAT, Janua.Anagraph.VCL.frameCompanyPayments;

type
    TFrameVCLCompanyAnagraph = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    pgCompanyInformations: TPageControl;
    tsCompanyAddress: TTabSheet;
    tsBillingInformations: TTabSheet;
    tsShippingAddress: TTabSheet;
    tsPaymentInformations: TTabSheet;
    btnCopyAddress: TButton;
    frameBillingAddress: TframeVCLAddressVAT;
    btnCopyCompanyBillingAddress: TButton;
    frameHeadOffice: TframeVCLAddress;
    frameShippingAddress: TframeVCLAddress;
    frameVCLBankAccount1: TuframeVCLBankAccount;
    frameAnagraphCompanypayments: TFrameAnagraphCompanypayments;
    pnlCompanyName: TPanel;
    lbCompanyName: TLabel;
    edCompanyName: TEdit;
    edCode: TEdit;
    lbCode: TLabel;
    procedure btnCopyCompanyBillingAddressClick(Sender: TObject);
  private
    [weak]
    FJanuaAnagraph: IAnagraphView;
    [weak]
    FViewModel: IJanuaDBAnagraphViewModel;
    procedure SetJanuaAnagraph(const Value: IAnagraphView);
  strict protected
    function GetViewModel: IJanuaDBAnagraphViewModel;
    procedure SetViewModel(const Value: IJanuaDBAnagraphViewModel);
  protected
    { Private declarations }
  public
    { Public declarations }
    property JanuaAnagraph: IAnagraphView read FJanuaAnagraph write SetJanuaAnagraph;
    property ViewModel: IJanuaDBAnagraphViewModel read GetViewModel write SetViewModel;
  end;

implementation

uses Janua.VCL.Framework;

{$R *.dfm}

procedure TFrameVCLCompanyAnagraph.btnCopyCompanyBillingAddressClick(Sender: TObject);
begin
  inherited;
  if Assigned(FViewModel) then
    FViewModel.CopyToBillingAddress;
end;

function TFrameVCLCompanyAnagraph.GetViewModel: IJanuaDBAnagraphViewModel;
begin
  Result := FViewModel;

end;

{ TFrameVCLCompanyAddress }

procedure TFrameVCLCompanyAnagraph.SetJanuaAnagraph(const Value: IAnagraphView);
begin
  FJanuaAnagraph := Value;
  FJanuaAnagraph.AnLastName.Bind('AsString', edCompanyName, 'Text');
  FJanuaAnagraph.AnLastName.Bind('Title', lbCompanyName, 'Caption');

  FJanuaAnagraph.AnCode.Bind('AsString', edCode, 'Text');
  FJanuaAnagraph.AnCode.Bind('Title', lbCode, 'Caption');

  frameHeadOffice.AddressField := FJanuaAnagraph.AnAddress;
  frameHeadOffice.PostalField := FJanuaAnagraph.AnPostalCode;
  frameHeadOffice.TownField := FJanuaAnagraph.AnTown;
  frameHeadOffice.AddressNumberField := FJanuaAnagraph.AnAddressNumber;
  frameHeadOffice.StateProvinceField := FJanuaAnagraph.AnStateProvince;
  frameHeadOffice.frameVCLCountrySearch.CountryCodeField := FJanuaAnagraph.AnIsoCountryCode;
  frameHeadOffice.frameVCLCountrySearch.CountryIdField := FJanuaAnagraph.AnCountryId;
  frameHeadOffice.frameVCLCountrySearch.CountryCode2Field := FJanuaAnagraph.AnIsoCountryCode2;


  frameBillingAddress.VatIDField := FJanuaAnagraph.AnVATId;

  frameBillingAddress.AddressField := FJanuaAnagraph.BillingAddress;
  frameBillingAddress.PostalField := FJanuaAnagraph.BillingPostalCode;
  frameBillingAddress.TownField := FJanuaAnagraph.BillingTown;
  frameBillingAddress.StateProvinceField := FJanuaAnagraph.BillingStateProvince;
  { TODO:
    frameBillingAddress.AddressNumberField := FJanuaAnagraph.BillingAddressNumber;
    frameBillingAddress.CountryCodeField := FJanuaAnagraph.BillingIsoCountryCode;
    frameBillingAddress.CountryIdField := FJanuaAnagraph.BillingCountryId;
    frameBillingAddress.CountryCode2Field := FJanuaAnagraph.BillingIsoCountryCode2; }

  frameShippingAddress.AddressField := FJanuaAnagraph.ShipmentAddress;
  frameShippingAddress.PostalField := FJanuaAnagraph.ShipmentPostalCode;
  frameShippingAddress.TownField := FJanuaAnagraph.ShipmentTown;
  frameShippingAddress.StateProvinceField := FJanuaAnagraph.ShipmentStateProvince;

  { frameHeadOffice.CountryCodeField := FJanuaAnagraph.CountryCode; }

end;

procedure TFrameVCLCompanyAnagraph.SetViewModel(const Value: IJanuaDBAnagraphViewModel);
begin
  FViewModel := Value;
  if Assigned(FViewModel) then
  begin
    SetJanuaAnagraph(FViewModel.AnagraphRecord);
  end;
end;

end.
