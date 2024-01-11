unit JanuaDBAnagraphRow;

interface

uses
  SysUtils, Classes, DB, JanuaDBRow;

type
  TJanuaDBAnagraphRow = class(TJanuaDBRow)
  private
    FEDIDefault: string;
    FEDI: TField;
    FSearchRecordCount: integer;
    FSearchParam: string;
    FCode: TField;
    FPrivacy: TField;
    FIsoCountry: TField;
    FStatus: TField;
    FPrivacyDefault: string;
    FIsoCounrtyDefault: string;
    FStatusDefault: integer;
    FCodeDefault: string;
    FAnagraphID: TField;
    FIsoCountryDefault: string;
    procedure SetEDI(const Value: TField);
    procedure SetEDIDefault(const Value: string);
    procedure SetSearchParam(const Value: string);
    procedure SetSearchRecordCount(const Value: integer);
    procedure SetCode(const Value: TField);
    procedure SetIsoCountry(const Value: TField);
    procedure SetPrivacy(const Value: TField);
    procedure SetStatus(const Value: TField);
    procedure SetCodeDefault(const Value: string);
    procedure SetPrivacyDefault(const Value: string);
    procedure SetStatusDefault(const Value: integer);
    procedure SetAnagraphID(const Value: TField);
    procedure SetIsoCountryDefault(const Value: string);

    { Private declarations }
  protected
    { Protected declarations }
    procedure SetFields; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }

    procedure NewRecord;
    procedure CalcFields;
    procedure BeforePost;
    procedure SetDefaultParams; 
    property SearchParam: string read FSearchParam write SetSearchParam;
    property SearchRecordCount: integer read FSearchRecordCount write SetSearchRecordCount;
    property EDI: TField read FEDI write SetEDI;
    property EDIDefault: string read FEDIDefault write SetEDIDefault;
    property Code: TField read FCode write SetCode;
    property CodeDefault: string read FCodeDefault write SetCodeDefault;
    property IsoCountry: TField read FIsoCountry write SetIsoCountry;
    property IsoCountryDefault: string read FIsoCountryDefault
                                       write SetIsoCountryDefault;
    property Privacy: TField read FPrivacy write SetPrivacy;
    property PrivacyDefault: string read FPrivacyDefault
                                    write SetPrivacyDefault;
    property Status: TField read FStatus write SetStatus;
    property StatusDefault: integer read FStatusDefault
                                    write SetStatusDefault default 1;
    property AnagraphID: TField read FAnagraphID write SetAnagraphID;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('JanuaAnagraph', [TJanuaDBAnagraphRow]);
end;

{ TJanuaDBAnagraphRow }

procedure TJanuaDBAnagraphRow.BeforePost;
begin
  // procedura che avviene prima di registrare un record
     if Dataset.State = dsInsert then Dataset.Tag := 1 else Dataset.Tag := 2;
     if FCode.AsWideString = '' then FCode.AsWideString := FAnagraphID.AsWideString;
     if FCode.IsNull then  FCode.AsWideString := FAnagraphID.AsWideString;
     if FPrivacy.AsWideString = '' then FPrivacy.AsWideString := FPrivacyDefault;
     if FStatus.IsNull then FStatus.Value := FStatusDefault;
     if FIsoCountry.AsWideString = '' then FIsoCountry.AsWideString := FIsoCountryDefault;
end;

procedure TJanuaDBAnagraphRow.CalcFields;
begin
  // procedura che avviene su calcolo campi calcolati
end;

constructor TJanuaDBAnagraphRow.Create(AOwner: TComponent);
begin
  inherited;
  self.FStatusDefault := 1;
end;

procedure TJanuaDBAnagraphRow.NewRecord;
begin
  // procedura con valori di default..
  self.FEdi.AsString := FEDIDefault;
  self.FIsoCountry.AsString := self.FIsoCounrtyDefault;

end;



procedure TJanuaDBAnagraphRow.SetAnagraphID(const Value: TField);
begin
  FAnagraphID := Value;
end;

procedure TJanuaDBAnagraphRow.SetCode(const Value: TField);
begin
  FCode := Value;
end;

procedure TJanuaDBAnagraphRow.SetCodeDefault(const Value: string);
begin
  FCodeDefault := Value;
end;



procedure TJanuaDBAnagraphRow.SetDefaultParams;
begin

end;

procedure TJanuaDBAnagraphRow.SetEDI(const Value: TField);
begin
  FEDI := Value;
  if FEDIDefault = '' then FEDIDefault := FEDI.DefaultExpression;
  
end;

procedure TJanuaDBAnagraphRow.SetEDIDefault(const Value: string);
begin
  FEDIDefault := Value;
end;


procedure TJanuaDBAnagraphRow.SetFields;
begin
  inherited;
  if self.FieldCount > 0 then
  begin
     FEDI := Dataset.FindField('EDI');
     if Assigned(FEDI)  then     
       if FEDIDefault = '' then FEDIDefault := FEDI.DefaultExpression;
  end;
end;


procedure TJanuaDBAnagraphRow.SetIsoCountry(const Value: TField);
begin
  FIsoCountry := Value;
end;

procedure TJanuaDBAnagraphRow.SetIsoCountryDefault(const Value: string);
begin
  FIsoCountryDefault := Value;
end;

procedure TJanuaDBAnagraphRow.SetPrivacy(const Value: TField);
begin
  FPrivacy := Value;
end;

procedure TJanuaDBAnagraphRow.SetPrivacyDefault(const Value: string);
begin
  FPrivacyDefault := Value;
end;

procedure TJanuaDBAnagraphRow.SetSearchParam(const Value: string);
begin
  FSearchParam := Value;
end;

procedure TJanuaDBAnagraphRow.SetSearchRecordCount(const Value: integer);
begin
  FSearchRecordCount := Value;
end;

procedure TJanuaDBAnagraphRow.SetStatus(const Value: TField);
begin
  FStatus := Value;
end;

procedure TJanuaDBAnagraphRow.SetStatusDefault(const Value: integer);
begin
  FStatusDefault := Value;
end;

end.
