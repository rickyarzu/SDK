unit Janua.VCL.frameCountrySearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls, VCL.StdCtrls, UWebGMapsCommon, UWebGMaps,
  JvExControls, JvDBLookup,
  // Januaproject
  Janua.Bindings.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Orm.Intf, Janua.Core.Classes, Janua.VCL.Geocoding, Janua.VCL.Interposers, uJanuaVCLFrame,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TframeVCLCountrySearch = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    dsCountries: TDataSource;
    fdmCountries: TFDMemTable;
    fdmCountriesiso_country_code: TWideStringField;
    fdmCountriesiso_country_code2: TWideStringField;
    fdmCountriescountry_year: TSmallintField;
    fdmCountriescountry_name: TWideStringField;
    fdmCountriesiso_currency_id: TSmallintField;
    fdmCountriescountry_id: TSmallintField;
    fdmCountriesiso_country_number: TWideStringField;
    fdmCountriesjguid: TGuidField;
    lbIsoShortCode: TLabel;
    edtShortCountryCode: TEdit;
    lblCountryID: TLabel;
    lbCountryName: TLabel;
    cboCountryName: TJvDBLookupCombo;
    lbCountryCode: TLabel;
    cboCountryCode: TJvDBLookupCombo;
    fdmCountryCodes: TFDMemTable;
    fdmCountryCodesiso_country_code: TWideStringField;
    fdmCountryCodescountry_id: TSmallintField;
    dsCountryCodes: TDataSource;
    procedure cboCountryNameCloseUp(Sender: TObject);
    procedure cboCountryCodeCloseUp(Sender: TObject);
    procedure edtShortCountryCodeExit(Sender: TObject);
  private
    FCountryID: integer;
    [weak]
    FCountryNameField: IJanuaField;
    [weak]
    FCountryCodeField: IJanuaField;
    [weak]
    FCountryIdField: IJanuaField;
    [weak]
    FCountryCode2Field: IJanuaField;
  protected
    procedure SetCountryCodeField(const Value: IJanuaField);
    procedure SetCountryIdField(const Value: IJanuaField);
    procedure SetCountryNameField(const Value: IJanuaField);
    procedure SetCountryID(const Value: integer);
    procedure SetCountryCode2Field(const Value: IJanuaField);
  public
    property CountryCodeField: IJanuaField read FCountryCodeField write SetCountryCodeField;
    property CountryCode2Field: IJanuaField read FCountryCode2Field write SetCountryCode2Field;
    property CountryNameField: IJanuaField read FCountryNameField write SetCountryNameField;
    property CountryIdField: IJanuaField read FCountryIdField write SetCountryIdField;
    property CountryID: integer read FCountryID write SetCountryID;
  end;

implementation

{$R *.dfm}
{ TFrame1 }

procedure TframeVCLCountrySearch.edtShortCountryCodeExit(Sender: TObject);
begin
  if fdmCountries.Locate('iso_country_code2', FCountryID, []) then
    SetCountryID(fdmCountriescountry_id.AsInteger);
end;

procedure TframeVCLCountrySearch.cboCountryCodeCloseUp(Sender: TObject);
begin
  SetCountryID(cboCountryCode.Value.ToInteger);
end;

procedure TframeVCLCountrySearch.cboCountryNameCloseUp(Sender: TObject);
begin
  SetCountryID(cboCountryName.Value.ToInteger);
end;

procedure TframeVCLCountrySearch.SetCountryCode2Field(const Value: IJanuaField);
begin
  FCountryCode2Field := Value;
  if Assigned(FCountryCode2Field) then
  begin
    edtShortCountryCode.Text := FCountryCode2Field.AsString;
    FCountryCode2Field.Bind('AsString', edtShortCountryCode, 'Text');
  end;
end;

procedure TframeVCLCountrySearch.SetCountryCodeField(const Value: IJanuaField);
begin
  FCountryCodeField := Value;
end;

procedure TframeVCLCountrySearch.SetCountryID(const Value: integer);
begin
  if (FCountryID <> Value) then
  begin
    FCountryID := Value;
    if (FCountryID <> fdmCountriescountry_id.AsInteger) and fdmCountries.Locate('country_id', FCountryID, []) then
    begin
      if Assigned(CountryIdField) then
        CountryIdField.AsInteger := FCountryID;
      if Assigned(CountryNameField) then
        CountryNameField.AsString := fdmCountriescountry_name.AsString;
      if Assigned(CountryCodeField) then
        CountryCodeField.AsString := fdmCountriesiso_country_code.AsString;
      cboCountryCode.Value := FCountryID.ToString;
      cboCountryName.Value := FCountryID.ToString;
      if Assigned(CountryCode2Field) then
        CountryCode2Field.AsString := fdmCountriesiso_country_code2.AsString;
    end;
    lblCountryID.Caption := FCountryID.ToString;
    Notify('CountryID');
  end;
end;

procedure TframeVCLCountrySearch.SetCountryIdField(const Value: IJanuaField);
begin
  FCountryIdField := Value;
  if Assigned(FCountryIdField) then
  begin
    CountryID := FCountryIdField.AsInteger;
    FCountryIdField.Bind('AsInteger', self, 'CountryID');
  end;
end;

procedure TframeVCLCountrySearch.SetCountryNameField(const Value: IJanuaField);
begin
  FCountryNameField := Value;
  { if Assigned(FCountryNameField) then
    begin
    edtCountryCode.Text := FCountryNameField.AsString;
    FCountryNameField.Bind('AsString', edtCountryCode, 'Text');
    end; }
end;

end.
