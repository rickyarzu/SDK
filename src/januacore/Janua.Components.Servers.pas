unit Janua.Components.Servers;

interface

uses Janua.Controls.Dialogs.Intf, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers,
  Janua.Core.DB.Types, Janua.Core.DB.Intf;

{$TYPEINFO ON}
{$METHODINFO ON}

type
  TJanuaServerConf = class(TJanuaCoreComponent)
  private
    FJanuaDBServerDialog: IJanuaServerDialog;
    FTestErrors: TJanuaDBDatasetErrors;
    procedure SetAddress(const Value: string);
    function GetAddress: string;
    procedure SetDatabaseName(const Value: string);
    function GetDatabaseName: string;
    procedure SetDirect(const Value: boolean);
    function GetDirect: boolean;
    procedure SetPassword(const Value: string);
    function GetPassword: string;
    procedure SetPort(const Value: Word);
    function GetPort: Word;
    procedure SetSchema(const Value: string);
    function GetSchema: string;
    procedure SetUsername(const Value: string);
    function GetUsername: string;
    procedure SetAppUrl(const Value: string);
    function GetAppUrl: string;
    procedure SetJanuaDBServerDialog(const Value: IJanuaServerDialog);
    procedure SetTestErrors(const Value: TJanuaDBDatasetErrors);
  protected
    function InternalActivate: boolean; override;
  public
    procedure LoadProfile;
    function GlobalConf: string;
    function Conf: string;
    // Questa procedura si basa sulle variabili pubbliche (Dizionario, Configurazione) per testare i server 'iscritti'
    procedure TestAllServers;
    // la procedura Dialog Config richiama il Custom Dialog per aggiornare il Record di Configurazione Connessione DB
    procedure ExecDialogConfig;
  public
    property TestErrors: TJanuaDBDatasetErrors read FTestErrors write SetTestErrors;
  published
    property Address: string read GetAddress write SetAddress stored false;
    property Password: string read GetPassword write SetPassword stored false;
    property Username: string read GetUsername write SetUsername stored false;
    property Schema: string read GetSchema write SetSchema stored false;
    property Port: Word read GetPort write SetPort stored false;
    property DatabaseName: string read GetDatabaseName write SetDatabaseName stored false;
    property Direct: boolean read GetDirect write SetDirect stored false;
    property AppUrl: string read GetAppUrl write SetAppUrl stored false;
    property JanuaDBServerDialog: IJanuaServerDialog read FJanuaDBServerDialog write SetJanuaDBServerDialog;
  end;

implementation

uses System.Classes, System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaServerConf }

function TJanuaServerConf.Conf: string;
begin
  // Result := self.FTJanuaApplication.JanuaServerConf.
  Result := TJanuaApplication.JanuaServerConf.GetConfiguration
end;

procedure TJanuaServerConf.ExecDialogConfig;
begin
  if self.FJanuaDBServerDialog = nil then
    raise Exception.Create('TJanuaServerConf.DialogConfig Dialog not set');
  if self.FJanuaDBServerDialog.Execute then
  begin

  end;
end;

function TJanuaServerConf.GetAddress: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Address
end;

function TJanuaServerConf.GetAppUrl: string;
begin
  Result := TJanuaApplication.AppName;
end;

function TJanuaServerConf.GetDatabaseName: string;
begin
  Result := TJanuaApplication.JanuaServerConf.DatabaseName
end;

function TJanuaServerConf.GetDirect: boolean;
begin
  Result := TJanuaApplication.JanuaServerConf.Direct
end;

function TJanuaServerConf.GetPassword: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Password
end;

function TJanuaServerConf.GetPort: Word;
begin
  Result := TJanuaApplication.JanuaServerConf.Port
end;

function TJanuaServerConf.GetSchema: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Schema
end;

function TJanuaServerConf.GetUsername: string;
begin
  Result := TJanuaApplication.JanuaServerConf.Username
end;

function TJanuaServerConf.GlobalConf: string;
begin
  Result := TJanuaApplication.GetConfiguration
end;

function TJanuaServerConf.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and notDesigning;
      if Result then
      begin
        Result := false;
        if not TJanuaCoreOS.GetActive then
          TJanuaCoreOS.PublicActivate;
        if TJanuaCoreOS.GetActive then
        begin
          LoadProfile;
          Result := true;
        end;
      end;
    except
      on e: Exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaServerConf.LoadProfile;
begin

end;

procedure TJanuaServerConf.SetAddress(const Value: string);
begin

end;

procedure TJanuaServerConf.SetAppUrl(const Value: string);
begin

end;

procedure TJanuaServerConf.SetDatabaseName(const Value: string);
begin

end;

procedure TJanuaServerConf.SetDirect(const Value: boolean);
begin

end;

procedure TJanuaServerConf.SetJanuaDBServerDialog(const Value: IJanuaServerDialog);
begin
  FJanuaDBServerDialog := Value;
end;

procedure TJanuaServerConf.SetPassword(const Value: string);
begin

end;

procedure TJanuaServerConf.SetPort(const Value: Word);
begin

end;

procedure TJanuaServerConf.SetSchema(const Value: string);
begin

end;

procedure TJanuaServerConf.SetTestErrors(const Value: TJanuaDBDatasetErrors);
begin
  FTestErrors := Value;
end;

procedure TJanuaServerConf.SetUsername(const Value: string);
begin

end;

procedure TJanuaServerConf.TestAllServers;
var
  LServer: Janua.Core.Servers.TJanuaCustomServer;
  aTestError: TJanuaDBDatasetError;
  aDataModule: TDataModule;
  i: integer;
begin
  FTestErrors.Clear;
  self.WriteLog('TJanuaServerConf.TestAllServers:', 'Starting all Servers Test');
  if (Owner is TDataModule) then
  begin
    aDataModule := (Owner as TDataModule);
    for i := 0 to aDataModule.ComponentCount - 1 do
      if aDataModule.Components[i] is TJanuaCustomServer then
      begin
        LServer := aDataModule.Components[i] as TJanuaCustomServer;
        try
          LServer.TestDataModule;
          if LServer.DatasetErrors.Count > 0 then
            for aTestError in LServer.DatasetErrors.Items do
              self.FTestErrors.Add(aTestError);
        except
          on e: Exception do
            self.WriteError('Error testing Server: ' + LServer.Name + ' - ' + e.Message, e, false);
        end;
      end;
  end;

end;

end.
