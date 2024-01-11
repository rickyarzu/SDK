unit Janua.Postgres.JPublic;

interface

uses
  SysUtils, Variants, Classes, DB, PgAccess, Janua.Core.Functions, Janua.Core.Types,
  Janua.Core.JPublic, udmPublic, Janua.Core.System, Janua.Core.Classes;

type
  TJanuaServerJPublic = class(TJanuaCustomServerJPublic)
  private
    // private declarations **************************************************************************
    procedure ActivateCountryDataset;
    procedure SetdmPublic(const Value: TDmPublic);
  protected
    // ****************************************************************************
    DM: TDmPublic;
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
    property dmPublic: TDmPublic read DM write SetdmPublic;
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
  if ((not KeepAlive) or Force) and Assigned(DM) then
  begin
    JanuaFree(DM);
    self.IDM := nil;
  end;
  inherited;
end;

procedure TJanuaServerJPublic.CreateDataModule;
begin
  if not Assigned(DM) then
  begin
    DM := TDmPublic.Create(nil);
    self.IDM := self.DM;
    DM.ServerSession := self.FJanuaSystem.JanuaServerSession;
    DM.isServer := not(JanuaApplicationGlobalProfile.ApplicationType in [jatClientWin]);
    self.FConnected := DM.TestConnect;
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
  if Assigned(DM) then
    JanuaFree(DM);
  inherited;
end;

function TJanuaServerJPublic.SetCountryByCode(cCode: string): boolean;
begin
  ClearErrors;
  Result := false;
  if self.FActive then
    try
      if not self.CheckUp then
        Exit(false);
      if self.Verbose then
        self.WriteLog('TJanuaServerJPublic.SetCountryByCode TdmPublic.Create(nil)');
      CreateDataModule;
      try
        DM.SetCountryByCode(cCode);
        self.FSelectedCountry := DM.Country;
      finally
        if self.Verbose then
          self.WriteLog('TJanuaServerJPublic.SetCountryByCode: FdmPublic.Free');
        DestroyDataModule;

      end;
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
  Result := False;
  ClearErrors;
  if (id > 0) and self.FActive then
    try
      if not CheckUp then
        Exit(false);
      WriteLog('TJanuaServerJPublic.SetCountryByID TdmPublic.Create(nil)');
      self.CreateDataModule;

      try
        DM.isServer := not(JanuaApplicationGlobalProfile.ApplicationType in [jatClientTablet, jatClientWin]);
        DM.ServerSession := self.FJanuaSystem.JanuaServerSession;
        DM.SetCountry(id);
        self.FSelectedCountry := DM.Country;
        WriteLog('TJanuaServerJPublic.SetCountryByID FSelectedCountry := ' +
          self.SelectedCountry.Country.id.ToString());
        WriteLog('TDmPublic.Log = ');
        WriteLog('TJanuaServerJPublic.SetCountryByID', DM.Log);
      finally
        if FVerbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID: FdmPublic.Free Start');
        self.DestroyDataModule;
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID FdmPublic.Free End');
      end;
      self.FCountryID := self.SelectedCountry.Country.id;
      self.FCountryName := self.SelectedCountry.Country.Name;
      self.WriteLog('TJanuaServerJPublic.SetCountryByID SelectedCountry: ' + self.SelectedCountry.Country.id.ToString +
        ', ' + SelectedCountry.Country.Name);

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
  Result := false;
  if self.FActive then
    try
      if not CheckUp then
        Exit(false);
      if Verbose then
        WriteLog('TJanuaServerJPublic.SetCountryByName TdmPublic.Create(nil)');
      // if not Assigned(FdmPublic) then
      self.CreateDataModule;
      try
        DM.isServer := not(JanuaApplicationGlobalProfile.ApplicationType in [jatClientTablet, jatClientWin]);
        DM.ServerSession := self.FJanuaSystem.JanuaServerSession;
        DM.SetCountryByName(cName);
        self.FSelectedCountry := DM.Country;
        FCountryID := DM.Country.Country.id;
        FCountryName := DM.Country.Country.Name;
      finally
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByName: FdmPublic.Free');
        // if not KeepAlive then
        self.DestroyDataModule;
      end;
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
  DM := Value;
end;

end.
