unit Janua.Oracle.StoredProcedure;

interface

uses
  SysUtils, Classes, Janua.Oracle.Dataset, Data.DB, Uni,
  Janua.Core.Types, Janua.Uni.Intf, Janua.Core.DB.Intf;

type
  TJanuaOraStoredProcedure = class(TJanuaOraDataset)
  private
    FStoredProcedure: TUniStoredProc;
    FProcedureName: widestring;
    FSQL: widestring;
    procedure SetStoredProcedure(const Value: TUniStoredProc);
    function GetSQLText: widestring;
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetActive(const Value: Boolean); override;
    procedure SetSQL(const Value: widestring);
    procedure SetProcedureName(const Value: widestring);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function Execute: Boolean; virtual;
  published
    { Published declarations }
    property StoredProcedure: TUniStoredProc read FStoredProcedure write SetStoredProcedure;
    property ProcedureName: widestring read FProcedureName write SetProcedureName;
    property SQLText: widestring read GetSQLText;
  end;

  // procedure Register;

implementation

{
  procedure Register;
  begin
  RegisterComponents('JanuaOracle', [TJanuaStoredProcedure]);
  end;
}

{ TJanuaStoredProcedure }

constructor TJanuaOraStoredProcedure.Create(AOwner: TComponent);
begin
  inherited;
end;

function TJanuaOraStoredProcedure.Execute: Boolean;
begin
  Result := Assigned(FStoredProcedure) and Assigned(JanuaSessionSource);
  try
    if Result then
    begin
      FStoredProcedure.Connection := JanuaSessionSource.Orasession;
      FStoredProcedure.Close;
      if self.DatasetType = jdtDataSet then
        SetParamType('Result', jptCursor);
      FStoredProcedure.ExecProc;
      Result := True;
    end;
  except
    Result := False;
    raise;
  end;
end;

function TJanuaOraStoredProcedure.GetSQLText: widestring;
begin
  if Assigned(FStoredProcedure) then
    Result := FStoredProcedure.SQL.Text
  else
    Result := '';
end;

procedure TJanuaOraStoredProcedure.SetActive(const Value: Boolean);
begin
  if Value then
  begin
    self.Active := False;
    if self.JanuaSessionSource.Orasession.Connected then
    begin
      if not Assigned(FStoredProcedure.Connection) then
        FStoredProcedure.Connection := self.JanuaSessionSource.Orasession;
      if not FStoredProcedure.Prepared then
        FStoredProcedure.Prepare;
      self.Active := self.Execute;
    end;
  end
  else
  begin
    self.Active := False;
    FStoredProcedure.Active := False;
    FStoredProcedure.Close;
  end;
end;

procedure TJanuaOraStoredProcedure.SetProcedureName(const Value: widestring);
begin
  FProcedureName := Value;
  if Assigned(FStoredProcedure) then
  begin
    if FStoredProcedure.StoredProcName <> FProcedureName then
      FStoredProcedure.StoredProcName := FProcedureName;
  end;
end;

procedure TJanuaOraStoredProcedure.SetSQL(const Value: widestring);
begin
  FSQL := Value;
  {
    begin
    janua_anagrafica_pkg.search_vat_code_office(:P_ANAGRAPH_ID, :P_VAT_CODE, :P_MIN_STATUS, :P_OFFICE_TYPE);
    end;
  }
  if Assigned(FStoredProcedure) then
    FStoredProcedure.SQL.Text := 'begin' + sLineBreak + ':Result := ' + FProcedureName + FSQL + ';' +
      sLineBreak + 'end;';
end;

procedure TJanuaOraStoredProcedure.SetStoredProcedure(const Value: TUniStoredProc);
begin
  FStoredProcedure := Value;
  if Assigned(FStoredProcedure) then
  begin
    SetDatset(FStoredProcedure);
    if Assigned(self.JanuaSessionSource) then
      if Assigned(self.JanuaSessionSource.Orasession) then
        FStoredProcedure.Connection := self.JanuaSessionSource.Orasession;
  end;
end;

end.
