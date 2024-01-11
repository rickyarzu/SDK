unit uframeVCLCompanyInformations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua Interposers
  Janua.Vcl.Interposers, uJanuaVCLFrame,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, JOrm.Anagraph.Intf, Janua.Anagraph.ViewModel.Intf;

type
  TframeVCLCompanyInformations = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    lbCompanyName: TLabel;
    edCompanyName: TEdit;
    GroupBox2: TGroupBox;
    lbCountryCode: TLabel;
    lbCountry: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    edCoutryCode: TEdit;
    edCountryName: TEdit;
    edContryISO2: TEdit;
    edVatID: TEdit;
  private
    FAnagraphRecord: IAnagraph;
    procedure SetAnagraphRecord(const Value: IAnagraph);
    { Private declarations }
  public
    { Public declarations }
    property AnagraphRecord: IAnagraph read FAnagraphRecord write SetAnagraphRecord;
  end;

implementation

{$R *.dfm}
{ TframeVCLCompanyInformations }

procedure TframeVCLCompanyInformations.SetAnagraphRecord(const Value: IAnagraph);
begin
  FAnagraphRecord := Value;
  if Assigned(FAnagraphRecord) then
  begin
    edCompanyName.Text := FAnagraphRecord.AnLastName.AsString;
    FAnagraphRecord.AnLastName.Bind('AsString', edCompanyName, 'Text');

    edContryISO2.Text := FAnagraphRecord.AnIsoCountryCode.AsString;
    FAnagraphRecord.AnIsoCountryCode.Bind('AsString', edContryISO2, 'Text');


  end
end;

end.
