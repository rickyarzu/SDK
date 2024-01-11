unit Janua.VCL.frameAddressVAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls, VCL.StdCtrls, UWebGMapsCommon, UWebGMaps,
  // Januaproject
  Janua.Bindings.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Orm.Intf, Janua.Core.Classes, Janua.VCL.Geocoding, Janua.VCL.Interposers, uJanuaVCLFrame, JvExControls,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Janua.VCL.frameAddress, Janua.VCL.frameCountrySearch, Janua.Core.Commons;

type
  TframeVCLAddressVAT = class(TframeVCLAddress, IJanuaContainer, IJanuaBindable)
    edtVatNumber: TEdit;
    lblVATIDNumber: TLabel;
  private
    FVatIDField: IJanuaField;
    procedure SetVatIDField(const Value: IJanuaField);
    { Private declarations }
  public
    { Public declarations }
    property VatIDField: IJanuaField read FVatIDField write SetVatIDField;
  end;

implementation

{$R *.dfm}
{ TframeVCLAddressVAT }

procedure TframeVCLAddressVAT.SetVatIDField(const Value: IJanuaField);
begin
  FVatIDField := Value;
  if Assigned(FVatIDField) then
  begin
    edtVatNumber.Text := FVatIDField.AsString;
    FVatIDField.Bind('AsString', edtVatNumber, 'Text')
  end;
end;

end.
