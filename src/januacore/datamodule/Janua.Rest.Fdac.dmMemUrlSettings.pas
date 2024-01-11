unit Janua.Rest.Fdac.dmMemUrlSettings;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.StrUtils,
  // FDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // JanuaProject
  // Janua
  Janua.Rest.Intf,
  Janua.Test.DMVC.ClientTests,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Inherited DataModule
  Janua.Core.DataModule, Vcl.Controls, Vcl.StdCtrls;

type
  TdmRestUrlSettings = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    memConnections: TFDMemTable;
    memConnectionsbase_url: TStringField;
    memConnectionsapi_uri: TStringField;
    memConnectionsport: TWordField;
    memConnectionsjguid: TGuidField;
    memConnectionsConnectionUrl: TStringField;
    memConnectionsUsername: TStringField;
    memConnectionsPassword: TStringField;
    lbConnectionSettings: TLabel;
    procedure memConnectionsCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure memConnectionsAfterScroll(DataSet: TDataSet);
    procedure memConnectionsNewRecord(DataSet: TDataSet);
    procedure memConnectionsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FFile: string;
    FPort: integer;
    FCmd: String;
    FClientLogin: IRESTLoginClient;
    procedure SetCmd(const Value: String);
    procedure SetPort(const Value: integer);
    procedure SynchronizeConnectionDataset;
  public
    { Public declarations }
    function Activate: boolean;
    procedure SaveFile;
    function Login: boolean;
  public
    property Port: integer read FPort write SetPort;
    property Cmd: String read FCmd write SetCmd;
  end;

var
  dmRestUrlSettings: TdmRestUrlSettings;

implementation

uses System.IOUtils, Janua.Application.Framework, Janua.Core.Functions, Janua.Rest.Client;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmRestTestConnections }

function TdmRestUrlSettings.Activate: boolean;
begin
  if not FileExists(FFile) then
    SaveFile
  else
    memConnections.LoadFromFile(FFile);
  SynchronizeConnectionDataset
end;

procedure TdmRestUrlSettings.DataModuleCreate(Sender: TObject);
begin
  FClientLogin := TRESTClientLogin.Create;
  FFile := TPath.Combine(TJanuaCoreOS.GetAppDataPath, 'rest_connections.mtb');
end;

function TdmRestUrlSettings.Login: boolean;
begin
  Result := FClientLogin.Login;
end;

procedure TdmRestUrlSettings.memConnectionsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SynchronizeConnectionDataset
end;

procedure TdmRestUrlSettings.memConnectionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SynchronizeConnectionDataset;
end;

procedure TdmRestUrlSettings.memConnectionsCalcFields(DataSet: TDataSet);
begin
  var
  lBaseUrl := ConcatUrl(memConnectionsbase_url.AsString, IfThen(memConnectionsport.AsInteger in [0, 80], '',
    memConnectionsport.AsString));
  memConnectionsConnectionUrl.AsString := ConcatUrl(lBaseUrl, memConnectionsapi_uri.AsString);
end;

procedure TdmRestUrlSettings.memConnectionsNewRecord(DataSet: TDataSet);
begin
  inherited;
  memConnectionsjguid.AsGuid := TGUID.NewGuid;
end;

procedure TdmRestUrlSettings.SaveFile;
begin
  if memConnections.State in [dsInsert, dsEdit] then
    memConnections.Post;
  memConnections.SaveToFile(FFile)
end;

procedure TdmRestUrlSettings.SetCmd(const Value: String);
begin
  FCmd := Value;
end;

procedure TdmRestUrlSettings.SetPort(const Value: integer);
begin
  FPort := Value;
end;

procedure TdmRestUrlSettings.SynchronizeConnectionDataset;
begin
  FClientLogin.UserName := memConnectionsUsername.AsString;
  FClientLogin.Password := memConnectionsPassword.AsString;
  FClientLogin.ServerPort := Word(memConnectionsport.AsInteger);
  // edTestUrl
  FClientLogin.ServerURL := memConnectionsbase_url.AsString;
  // edAPIURI
  FClientLogin.APIUrl := memConnectionsapi_uri.AsString;
end;

end.
