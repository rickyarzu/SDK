unit Janua.Anagraph.VCL.frameBankAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ToolWin, VCL.ComCtrls,
  Data.DB, JvExStdCtrls, JvGroupBox,
  // Januaproject
  Janua.VCL.Interposers, uJanuaVCLFrame, JOrm.Anagraph.Intf, Janua.Bindings.Intf, Janua.Orm.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Janua.VCL.frameCountrySearch;

type
  TuframeVCLBankAccount = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    JvGroupBox2: TJvGroupBox;
    lbBankIBANCode: TLabel;
    lbSwiftCode: TLabel;
    lbBankNameCode: TLabel;
    lbAccountNumber: TLabel;
    lbBankName: TLabel;
    edIBANCode: TEdit;
    edSwiftCode: TEdit;
    edBankCode: TEdit;
    edAccountNumber: TEdit;
    edBankNameCode: TEdit;
    fdmCountries: TFDMemTable;
    fdmCountriesiso_country_code: TWideStringField;
    fdmCountriesiso_country_code2: TWideStringField;
    fdmCountriescountry_year: TSmallintField;
    fdmCountriescountry_name: TWideStringField;
    fdmCountriesiso_currency_id: TSmallintField;
    fdmCountriescountry_id: TSmallintField;
    fdmCountriesiso_country_number: TWideStringField;
    fdmCountriesjguid: TGuidField;
    dsCountries: TDataSource;
    frameVCLCountrySearch: TframeVCLCountrySearch;
  private
    FFieldCountryName: IJanuaField;
    FFieldCountryISOCode: IJanuaField;
    FFieldCountryCode: IJanuaField;
    FFieldBankCode: IJanuaField;
    FFieldBankNameCode: IJanuaField;
    FFieldIBANCode: IJanuaField;
    FFieldSwiftCode: IJanuaField;
    FFieldAccountNumber: IJanuaField;
    FFieldCountryID: IJanuaField;
    procedure SetFieldAccountNumber(const Value: IJanuaField);
    procedure SetFieldBankCode(const Value: IJanuaField);
    procedure SetFieldBankNameCode(const Value: IJanuaField);
    procedure SetFieldCountryCode(const Value: IJanuaField);
    procedure SetFieldCountryISOCode(const Value: IJanuaField);
    procedure SetFieldCountryName(const Value: IJanuaField);
    procedure SetFieldIBANCode(const Value: IJanuaField);
    procedure SetFieldSwiftCode(const Value: IJanuaField);
    procedure SetFieldCountryID(const Value: IJanuaField);
    { Private declarations }
  public
    { Public declarations }
    property FieldCountryCode: IJanuaField read FFieldCountryCode write SetFieldCountryCode;
    property FieldCountryName: IJanuaField read FFieldCountryName write SetFieldCountryName;
    property FieldCountryISOCode: IJanuaField read FFieldCountryISOCode write SetFieldCountryISOCode;
    property FieldIBANCode: IJanuaField read FFieldIBANCode write SetFieldIBANCode;
    property FieldSwiftCode: IJanuaField read FFieldSwiftCode write SetFieldSwiftCode;
    property FieldBankCode: IJanuaField read FFieldBankCode write SetFieldBankCode;
    property FieldAccountNumber: IJanuaField read FFieldAccountNumber write SetFieldAccountNumber;
    property FieldBankNameCode: IJanuaField read FFieldBankNameCode write SetFieldBankNameCode;
    property FieldCountryID: IJanuaField read FFieldCountryID write SetFieldCountryID;
  end;

implementation

{$R *.dfm}
{ TuframeVCLBankAccount }

procedure TuframeVCLBankAccount.SetFieldAccountNumber(const Value: IJanuaField);
begin
  FFieldAccountNumber := Value;
  if Assigned(FFieldAccountNumber) then
  begin
    edAccountNumber.Text := FFieldAccountNumber.AsString;
    FFieldAccountNumber.Bind('AsString', edAccountNumber, 'Text');
  end;
end;

procedure TuframeVCLBankAccount.SetFieldBankCode(const Value: IJanuaField);
begin
  FFieldBankCode := Value;
  if Assigned(FFieldBankCode) then
  begin
    edBankCode.Text := FFieldBankCode.AsString;
    FFieldBankCode.Bind('AsString', edBankCode, 'Text');
  end;
end;

procedure TuframeVCLBankAccount.SetFieldBankNameCode(const Value: IJanuaField);
begin
  FFieldBankNameCode := Value;
  if Assigned(FFieldBankNameCode) then
  begin
    edBankNameCode.Text := FFieldBankNameCode.AsString;
    FFieldBankNameCode.Bind('AsString', edBankNameCode, 'Text');
  end;
end;

procedure TuframeVCLBankAccount.SetFieldCountryCode(const Value: IJanuaField);
begin
  frameVCLCountrySearch.CountryCode2Field := FFieldCountryCode
end;

procedure TuframeVCLBankAccount.SetFieldCountryID(const Value: IJanuaField);
begin
  frameVCLCountrySearch.CountryIdField := FFieldCountryID
end;

procedure TuframeVCLBankAccount.SetFieldCountryISOCode(const Value: IJanuaField);
begin
  frameVCLCountrySearch.CountryCodeField := FFieldCountryISOCode
end;

procedure TuframeVCLBankAccount.SetFieldCountryName(const Value: IJanuaField);
begin
  frameVCLCountrySearch.CountryNameField := FFieldCountryName
end;

procedure TuframeVCLBankAccount.SetFieldIBANCode(const Value: IJanuaField);
begin
  FFieldIBANCode := Value;
  if Assigned(FFieldIBANCode) then
  begin
    edIBANCode.Text := FFieldIBANCode.AsString;
    FFieldIBANCode.Bind('AsString', edIBANCode, 'Text');
  end;
end;

procedure TuframeVCLBankAccount.SetFieldSwiftCode(const Value: IJanuaField);
begin
  FFieldSwiftCode := Value;
  if Assigned(FFieldSwiftCode) then
  begin
    edSwiftCode.Text := FFieldSwiftCode.AsString;
    FFieldSwiftCode.Bind('AsString', edSwiftCode, 'Text');
  end;
end;

end.
