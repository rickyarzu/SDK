unit uframeVCLShippingAddress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua Interposers
  Janua.Vcl.Interposers, uJanuaVCLFrame, Janua.Bindings.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  JOrm.Anagraph.Intf, Janua.Anagraph.ViewModel.Intf;

type
  TframeVCLShippingAddress = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    grpShippingAddress: TGroupBox;
    lbStreetAddress: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbStateProvince: TLabel;
    lbNumber: TLabel;
    edCompanyAddress: TEdit;
    edPostalCode: TEdit;
    edTown: TEdit;
    edStateProvince: TEdit;
    edAddressNumber: TEdit;
    edGoogleSearchAddress: TEdit;
  private
  [weak]
    FAnagraphRecord: IAnagraph;
    procedure SetAnagraphRecord(const Value: IAnagraph);
    { Private declarations }
  public
    { Public declarations }
    property AnagraphRecord: IAnagraph read FAnagraphRecord write SetAnagraphRecord;
  end;

implementation

{$R *.dfm}
{ TframeVCLShippingAddress }

procedure TframeVCLShippingAddress.SetAnagraphRecord(const Value: IAnagraph);
begin
  FAnagraphRecord := Value;
  if Assigned(FAnagraphRecord) then
  begin
    edCompanyAddress.Text := FAnagraphRecord.AnAddress.AsString;
    FAnagraphRecord.AnAddress.Bind('AsString', edCompanyAddress, 'Text');

    edAddressNumber.Text := FAnagraphRecord.AnAddressNumber.AsString;
    FAnagraphRecord.AnAddressNumber.Bind('AsString', edAddressNumber, 'Text');

    edPostalCode.Text := FAnagraphRecord.AnPostalCode.AsString;
    FAnagraphRecord.AnPostalCode.Bind('AsString', edPostalCode, 'Text');

    edTown.Text := FAnagraphRecord.AnTown.AsString;
    FAnagraphRecord.AnTown.Bind('AsString', edTown, 'Text');

    edStateProvince.Text := FAnagraphRecord.AnStateProvince.AsString;
    FAnagraphRecord.AnStateProvince.Bind('AsString', edStateProvince, 'Text');
  end;
end;

end.
