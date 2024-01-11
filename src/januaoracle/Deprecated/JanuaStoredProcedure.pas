unit JanuaStoredProcedure;

interface

uses
  SysUtils, Classes, JanuaOraDataset, DB,  Ora, MemUtils;

type
  TJanuaStoredProcedure = class(TJanuaOraDataset)
  private
    FStoredProcedure: ToraStoredProc;
    FProcedureName: widestring;
    FSQL: WideString;
    procedure SetStoredProcedure(const Value: ToraStoredProc);
    function GetSQLText: widestring;
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetActive(const Value: Boolean); virtual;
    procedure SetSQL(const Value: WideString);
    procedure SetProcedureName(const Value: widestring);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);  override;
    function Execute: boolean;  virtual;
  published
    { Published declarations }
    property StoredProcedure: ToraStoredProc read FStoredProcedure write SetStoredProcedure;
    property ProcedureName: widestring read FProcedureName write SetProcedureName;
    property SQLText: widestring read GetSQLText;
  end;

//procedure Register;

implementation

{
procedure Register;
begin
  RegisterComponents('JanuaOracle', [TJanuaStoredProcedure]);
end;
}

{ TJanuaStoredProcedure }

constructor TJanuaStoredProcedure.Create(AOwner: TComponent);
begin
  inherited;
end;

function TJanuaStoredProcedure.Execute: boolean;
begin
  if Assigned(FStoredProcedure) then
  begin
    try
      if assigned(JanuaSessionSource) then Result := JanuaSessionSource.Active = True;
      if Result  then
      begin
         FStoredProcedure.Session := JanuaSessionSource.Orasession;
         FStoredProcedure.Close; 
         if self.DatasetType = jdtRecordSet then SetParamType('Result', jptCursor);
         FStoredProcedure.ExecProc;
         Result := True;
      end;
    except
      Result := False;
      raise; 
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function TJanuaStoredProcedure.GetSQLText: widestring;
begin
  if assigned(FStoredProcedure) then Result :=  FStoredProcedure.SQL.Text
                                else Result := ''; 
end;



procedure TJanuaStoredProcedure.SetActive(const Value: Boolean);
begin
  if Value then
    begin
     self.Active := False;
     if self.JanuaSessionSource.Orasession.Connected then begin
       if not assigned(FStoredProcedure.Session) then
          FStoredProcedure.Session := self.JanuaSessionSource.Orasession;
       if not FStoredProcedure.Prepared then FStoredProcedure.Prepare;
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




procedure TJanuaStoredProcedure.SetProcedureName(const Value: widestring);
begin
  FProcedureName := Value;
  if Assigned (FStoredProcedure) then
  begin
      if FStoredProcedure.StoredProcName <> FProcedureName then
         FStoredProcedure.StoredProcName := FProcedureName;
  end;
end;

procedure TJanuaStoredProcedure.SetSQL(const Value: WideString);
begin
  FSQL := Value;
{
  begin
  janua_anagrafica_pkg.search_vat_code_office(:P_ANAGRAPH_ID, :P_VAT_CODE, :P_MIN_STATUS, :P_OFFICE_TYPE);
   end;
}
  if assigned(FStoredProcedure) then
     FStoredProcedure.SQL.Text := 'begin' + sLineBreak + ':Result := '
                      + FProcedureName + FSQL + ';' + sLineBreak + 'end;';
end;

procedure TJanuaStoredProcedure.SetStoredProcedure(const Value: ToraStoredProc);
begin
  FStoredProcedure := Value;
  if Assigned(FStoredProcedure) then
  begin
     SetDatset(FStoredProcedure);
     if assigned (self.JanuaSessionSource) then
        if Assigned(self.JanuaSessionSource.Orasession) then
                  FStoredProcedure.Session := self.JanuaSessionSource.Orasession;
  end;
end;


end.
