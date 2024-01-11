unit Janua.Postgres.Univeristy;

interface

uses Janua.Core.System, Janua.Core.Classes, Janua.Core.University,
  Datasnap.DBClient, Data.DB, System.SysUtils, System.Classes,
  Janua.Core.Functions,
  udmPgUniversity;

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaServerPgUniversity = class(TJanuaCustomServerUni)
  private
    FdmPgUniversity: TdmPgUniversity;
    procedure SetdmPgUniversity(const Value: TdmPgUniversity);
  protected
    procedure CreateUni;
    procedure DestroyUni;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
    // questa funzione nel discendente 'chiama' InternalCountrybyName se non lo trova chiama il db
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Activate: boolean; override;
    procedure Deactivate; override;
    function OpenUniversities: boolean; override;
  published
    property dmPgUniversity: TdmPgUniversity read FdmPgUniversity write SetdmPgUniversity;
  end;

type
  /// <summary>
  /// Gestore dei Libri Universitario
  /// </summary>
  TJanuaServerPgUniBooks = class(TJanuaUniBooksServer)
  private
  protected
  public
  published

  end;

implementation

uses Janua.Core.Servers;

{ TJanuaServerPgUniversity }

function TJanuaServerPgUniversity.Activate: boolean;
begin
  Result := inherited;
  if Result and KeepAlive then
    try
      CreateUni
    except
      on e: Exception do
        self.WriteError('TJanuaServerPgUniversity.Activate', e);

    end;
end;

constructor TJanuaServerPgUniversity.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaServerPgUniversity.CreateDataModule;
begin
  inherited;
  self.CreateUni;
end;

procedure TJanuaServerPgUniversity.CreateUni;
begin
  if not Assigned(dmPgUniversity) then
    FdmPgUniversity := TdmPgUniversity.Create(self);
  self.IDM := self.FdmPgUniversity;
  FdmPgUniversity.ServerSession := self.JanuaSystem.JanuaServerSession;
  FdmPgUniversity.TestConnect
end;

procedure TJanuaServerPgUniversity.Deactivate;
begin
  inherited;
  if Assigned(FdmPgUniversity) then
    FdmPgUniversity.Free;
  self.FActive := False;
end;

destructor TJanuaServerPgUniversity.Destroy;
begin
  if Assigned(dmPgUniversity) then
  begin
    DestroyDataModule(True);
  end;
  inherited;
end;

procedure TJanuaServerPgUniversity.DestroyDataModule(Force: boolean);
begin
  if Force or not self.KeepAlive then
  begin
  if Assigned(FdmPgUniversity) then
    FdmPgUniversity.Free;
    self.IDM := nil;
  end;

  inherited;

end;

procedure TJanuaServerPgUniversity.DestroyUni;
begin
  if Assigned(FdmPgUniversity) and not KeepAlive then
    FreeAndNil(FdmPgUniversity);
end;

function TJanuaServerPgUniversity.OpenUniversities: boolean;
begin
  Result := inherited;
  if Result then
    try
      try
        self.CreateUni;
        if self.FdmPgUniversity.OpenUniversities then
          if not self.KeepAlive then
          begin
            FdmPgUniversity.CloneUniversities(self.FcdsUniversities);

            if self.cdsUniversities.Active then
            begin
              cdsFaculties.DataSetField := TDataSetField(cdsUniversities.FieldByName('cdsFaculties'));
              if self.cdsFaculties.Active then
              begin
                cdsModules.DataSetField := TDataSetField(cdsUniversities.FieldByName('cdsModules'));
              end;
            end;
          end
          else
          begin
            self.cdsUniversities := FdmPgUniversity.cdsUniversities;
            self.cdsFaculties := FdmPgUniversity.cdsFaculties;
            self.cdsModules := FdmPgUniversity.cdsModules;
          end;

      finally
        self.DestroyUni;
      end;
    except
      on e: Exception do
      begin
        self.WriteError('TJanuaServerPgUniversity.DestroyUni', e);
        Result := False;
      end;

    end;
end;

procedure TJanuaServerPgUniversity.SetdmPgUniversity(const Value: TdmPgUniversity);
begin
  FdmPgUniversity := Value;
end;

end.
