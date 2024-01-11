unit Janua.Server.JPublic;

interface

uses
  SysUtils, Variants, Classes, DB, PgAccess, Janua.Core.Functions,
  Janua.Core.JPublic, Janua.Server.System, udmPublic, Janua.Core.System,
  Janua.Server.Functions, Janua.Core.Classes;

type
  TJanuaServerJPublic = class(TJanuaCustomServerJPublic)
  private
    // private declarations **************************************************************************
    procedure ActivateCountryDataset;
    procedure SetdmPublic(const Value: TDmPublic);
  protected
    // ****************************************************************************
    FdmPublic: TDmPublic;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
    // ****************************************************************************
  public
    constructor Create(AOwner: TComponent); override;
    function SetCountryByID(id: smallint): boolean; override;
    function SetCountryByName(cName: string): boolean; override;
    function SetCountryByCode(cCode: string): boolean; override;
    Destructor Destroy; override;
    function Activate: boolean; override;
  published
    // published Properties .....
    property dmPublic: TDmPublic read FdmPublic write SetdmPublic;
  end;

implementation

{ TJanuaServerJPublic }

function TJanuaServerJPublic.Activate: boolean;
begin
  try
    Result := inherited;
    self.WriteLog('Eseguo CheckUp Result=' + Result.ToString());
    Result := CheckUp;
    self.WriteLog('Terminato CheckUp Result=' + Result.ToString());

    if Result and not self.FActive then
    begin
      self.FActive := Result;
      self.FDefaultCountryID := self.FJanuaSystem.UserProfile.Address.Location.Country.id;
      // Country id deve esseere valorizzato per poi caricare le tabelle di riferimento della nazione
      // al massimo dovrebbe essere valorizzato ai dati di Default .................................
      Result := self.SetCountryByID(self.FDefaultCountryID);
      if Result then
      begin
        self.WriteLog('TJanuaServerJPublic.Activate : ' + self.FCountryName);
        self.FJanuaSystem.UserProfile.Address.Location.SetCountry(self.SelectedCountry);
        self.FJanuaSystem.UserProfile.BirthLocation.SetCountry(self.SelectedCountry);
        self.WriteLog(FJanuaSystem.UserProfile.ToString);
        self.FActive := Result;
      end
      else
      begin
        self.WriteLog('Errore TJanuaServerJPublic.Activate Country=0 : ' + self.FCountryName);
      end;
    end;
    if not Result then
    begin
      self.FActive := Result;
      self.FCountryID := 0;
      self.FCountryName := '';
    end;
  except
    on e: exception do
      self.WriteError('TJanuaServerJPublic.Activate Error:', e);
  end;
end;

procedure TJanuaServerJPublic.DestroyDataModule(Force: boolean = false);
begin
  if ((not FKeepAlive) or Force) and Assigned(FdmPublic) then
    FreeAndNil(FdmPublic);
end;

procedure TJanuaServerJPublic.CreateDataModule;
begin
  if not Assigned(FdmPublic) then
  begin
    FdmPublic := TDmPublic.Create(nil);
    FdmPublic.ServerSession := self.FJanuaSystem.JanuaServerSession;
    FdmPublic.isServer := not(FApplicationProfile.ApplicationType in [jatClientWin]);
  end;
end;

procedure TJanuaServerJPublic.ActivateCountryDataset;
begin
  // if not Assigned(self.FCountryDataset)
  // then self.FCountryDataset := FdmPublic.cds

end;

constructor TJanuaServerJPublic.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaServerJPublic.Destroy;
begin
  if Assigned(FdmPublic) then
    self.FdmPublic.Free;
  inherited;
end;

function TJanuaServerJPublic.SetCountryByCode(cCode: string): boolean;
begin
  ClearErrors;
  Result := False;
  if self.FActive then
    try
      if not self.CheckUp then
        Exit(False);
      if self.Verbose then
        self.WriteLog('TJanuaServerJPublic.SetCountryByCode TdmPublic.Create(nil)');
      CreateDataModule;
      try
        FdmPublic.SetCountryByCode(cCode);
        self.FSelectedCountry := FdmPublic.Country;
      finally
        if self.Verbose then
          self.WriteLog('TJanuaServerJPublic.SetCountryByCode: FdmPublic.Free');
        DestroyDataModule;

      end;
      // if self.FVerbose then self.FLog.Add(self.FSelectedCountry.ToString);
    except
      on e: exception do
      begin
        self.WriteError('Errore TJanuaServerJPublic.SetCountryByCode: ', e);
        self.HasErrors := True;
      end;
    end;

end;

function TJanuaServerJPublic.SetCountryByID(id: smallint): boolean;
begin
  ClearErrors;
  if (id > 0) and self.FActive then
    try
      if not CheckUp then
        Exit(False);
      WriteLog('TJanuaServerJPublic.SetCountryByID TdmPublic.Create(nil)');
      self.CreateDataModule;

      try
        FdmPublic.isServer := not(FApplicationProfile.ApplicationType in [jatClientTablet,
          jatClientWin]);
        FdmPublic.ServerSession := self.FJanuaSystem.JanuaServerSession;
        FdmPublic.SetCountry(id);
        self.FSelectedCountry := FdmPublic.Country;
        WriteLog('TJanuaServerJPublic.SetCountryByID FSelectedCountry := ' +
          self.SelectedCountry.Country.id.ToString());
        WriteLog('TDmPublic.Log = ');
        WriteLog(FdmPublic.Log.Text);
      finally
        if FVerbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID: FdmPublic.Free Start');
        self.DestroyDataModule;
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID FdmPublic.Free End');
      end;
      self.FCountryID := self.SelectedCountry.Country.id;
      self.FCountryName := self.SelectedCountry.Country.Name;
      self.WriteLog('TJanuaServerJPublic.SetCountryByID SelectedCountry: ' +
        self.SelectedCountry.Country.id.ToString + ', ' + SelectedCountry.Country.Name);

      // if FVerbose then FLog.Add(FSelectedCountry.ToString);
      // if Verbose then
      WriteLog('TJanuaServerJPublic.SetCountryByID end Sync');
      Result := True;
      //
    except
      on e: exception do
      begin
        WriteError('Errore TJanuaServerJPublic.SetCountryByID: ', e);
        HasErrors := True;
      end;
    end;

end;

function TJanuaServerJPublic.SetCountryByName(cName: string): boolean;
begin
  ClearErrors;
  Result := False;
  if self.FActive then
    try
      if not CheckUp then
        Exit(False);
      if Verbose then
        WriteLog('TJanuaServerJPublic.SetCountryByName TdmPublic.Create(nil)');
      // if not Assigned(FdmPublic) then
      self.CreateDataModule;
      try
        FdmPublic.isServer := not(FApplicationProfile.ApplicationType in [jatClientTablet,
          jatClientWin]);
        FdmPublic.ServerSession := self.FJanuaSystem.JanuaServerSession;
        FdmPublic.SetCountryByName(cName);
        self.FSelectedCountry := FdmPublic.Country;
        FCountryID := FdmPublic.Country.Country.id;
        FCountryName := FdmPublic.Country.Country.Name;
      finally
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByName: FdmPublic.Free');
        // if not FKeepAlive then
        self.DestroyDataModule;
      end;
      // if FVerbose then FLog.Add(FSelectedCountry.ToString);
    except
      on e: exception do
      begin
        WriteError('Errore TJanuaServerJPublic.SetCountryByName: ', e);
        HasErrors := True;
      end;
    end;
end;

procedure TJanuaServerJPublic.SetdmPublic(const Value: TDmPublic);
begin
  FdmPublic := Value;
end;

end.
