unit Janua.Postgres.JPublic;

interface

uses
  SysUtils, Variants, Classes, DB, Uni, Janua.Core.Functions, Janua.Core.Types, Janua.Core.DB.Intf,
  Janua.Core.JPublic, Janua.Commons.pgCountriesLocal, Janua.Core.System, Janua.Core.Classes;

type
  TJanuaServerJPublic = class(TJanuaCustomServerJPublic)
  private
    DM: TdmPgCountriesLocal;
    // private declarations **************************************************************************
    procedure ActivateCountryDataset;
    procedure SeTdmPgCountriesLocal(const Value: TdmPgCountriesLocal);
  strict protected
    function InternalActivate: boolean; override;
  protected
    // ****************************************************************************
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
    // ****************************************************************************
  public
    constructor Create(AOwner: TComponent); override;
    function SetCountryByID(id: smallint): boolean; override;
    function SetCountryByName(cName: string): boolean; override;
    function SetCountryByCode(cCode: string): boolean; override;
    Destructor Destroy; override;
  published
    // published Properties .....
    property dmPublic: TdmPgCountriesLocal read DM write SeTdmPgCountriesLocal;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Servers;

{ TJanuaServerJPublic }

procedure TJanuaServerJPublic.DestroyDataModule(Force: boolean = false);
begin
  if ((not KeepAlive) or Force) and Assigned(DM) then
  begin
    JanuaFree(DM);
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaServerJPublic.InternalActivate: boolean;
begin
  if not Active then
    try
      Result := inherited;
      if Result then
      begin
        self.WriteLog('Eseguo CheckUp Result=' + Result.ToString());
        Result := CheckUp;
        self.WriteLog('Terminato CheckUp Result=' + Result.ToString());

        if Result then
        begin
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
          end
          else
          begin
            self.WriteLog('Errore TJanuaServerJPublic.Activate Country=0 : ' + self.FCountryName);
          end;
        end;
        if not Result then
        begin
          self.FCountryID := 0;
          self.FCountryName := '';
        end;
        Result := True
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaServerJPublic.CreateDataModule;
begin
  if not Assigned(DM) then
  begin
    DM := TdmPgCountriesLocal.Create(nil);
    if not supports(DM, IJanuaServerDataModule, FIDM) then
      raise exception.Create('lCms do not supports IJanuaServerDataModule');

    DM.ServerSession := self.FJanuaSystem.JanuaServerSession;
    DM.isServer := not(TJanuaApplication.ApplicationType in [jatClientWin]);
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
  if self.Active then
    try
      if not self.CheckUp then
        Exit(false);
      if self.Verbose then
        self.WriteLog('TJanuaServerJPublic.SetCountryByCode TdmPgCountriesLocal.Create(nil)');
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
  Result := false;
  ClearErrors;
  if (id > 0) and self.Active then
    try
      if not CheckUp then
        Exit(false);
      WriteLog('TJanuaServerJPublic.SetCountryByID TdmPgCountriesLocal.Create(nil)');
      self.CreateDataModule;

      try
        DM.isServer := not(TJanuaApplication.ApplicationType in [jatClientTablet, jatClientWin]);
        DM.ServerSession := self.FJanuaSystem.JanuaServerSession;
        DM.SetCountry(id);
        self.FSelectedCountry := DM.Country;
        WriteLog('TJanuaServerJPublic.SetCountryByID FSelectedCountry := ' +
          self.SelectedCountry.Country.id.ToString());
        WriteLog('TdmPgCountriesLocal.Log = ');
        WriteLog('TJanuaServerJPublic.SetCountryByID', DM.Log);
      finally
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID: FdmPublic.Free Start');
        self.DestroyDataModule;
        if Verbose then
          WriteLog('TJanuaServerJPublic.SetCountryByID FdmPublic.Free End');
      end;
      self.FCountryID := self.SelectedCountry.Country.id;
      self.FCountryName := self.SelectedCountry.Country.Name;
      self.WriteLog('TJanuaServerJPublic.SetCountryByID SelectedCountry: ' +
        self.SelectedCountry.Country.id.ToString + ', ' + SelectedCountry.Country.Name);

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
  if self.Active then
    try
      if not CheckUp then
        Exit(false);
      if Verbose then
        WriteLog('TJanuaServerJPublic.SetCountryByName TdmPgCountriesLocal.Create(nil)');
      // if not Assigned(FdmPublic) then
      self.CreateDataModule;
      try
        DM.isServer := not(TJanuaApplication.ApplicationType in [jatClientTablet, jatClientWin]);
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

procedure TJanuaServerJPublic.SeTdmPgCountriesLocal(const Value: TdmPgCountriesLocal);
begin
  DM := Value;
end;

end.
