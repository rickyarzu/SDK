unit Janua.Phoenix.VCL.ArubaClient;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.ShellAPI, System.SysUtils, System.Variants, System.Classes,
  System.JSON, Data.DB,
  // VCL
  VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls, AdvMemo, advmjson,
  // Phoenix
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO,
  // Forms
  Janua.Controls.Forms.Intf,
  // Janua
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Samples.Spin;

type
  TfrmPhoenixArubaclient = class(TForm)
    Panel1: TPanel;
    edUsername: TLabeledEdit;
    edPassword: TLabeledEdit;
    edServerUrl: TLabeledEdit;
    btnRestCall: TButton;
    btnUpdateData: TButton;
    btnConf: TButton;
    btnTestNewReport: TButton;
    btnFinalTest: TButton;
    btnBuildCache: TButton;
    btnAltreCache: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvJSONMemoStyler2: TAdvJSONMemoStyler;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    memConfigurazioniHead: TAdvMemo;
    memTmpConfigurazioni: TAdvMemo;
    memConfigurazioni: TAdvMemo;
    procedure btnRestCallClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoenixArubaclient: TfrmPhoenixArubaclient;

implementation

uses
  // Janua
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, Janua.REST.Client, DTO.Phoenix.ReportList,
  Janua.Core.AsyncTask, Janua.Application.Framework, Janua.Core.JSON;

{$R *.dfm}

procedure TfrmPhoenixArubaclient.btnRestCallClick(Sender: TObject);
var
  // TRESTClient = class( IRESTClient)
  lClient: IJanuaRESTClient;
  lJson: string;
  lJsonObject, lConfJson: TJsonObject;
begin
  TJanuaApplication.RestClientConf.Username := edUsername.Text;
  TJanuaApplication.RestClientConf.Password := edPassword.Text;
  TJanuaApplication.RestClientConf.Server := edServerUrl.Text;
  lClient := TJanuaRESTClient.Create;
  // https://www.assoantincendio.com/PhoenixMobile/PhxConfigurazioni.php?PhxAccount=***!Admin&PhxPassword=***!PhoenixFly
  lClient.PasswordParam := 'PhxPassword';
  lClient.UserParam := 'PhxAccount';
  lClient.SetMimeType(TJanuaMimeType.jmtTextPlain);
  lClient.AuthenticationType := Janua.REST.Types.TAuthenticationType.jatGetParams;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, ['PhoenixMobile', 'PhxConfigurazioni.php']) then
  begin
    (*
      lJson := StringReplace(lClient.Content, '"{', '{', [rfReplaceAll]);
      lJson := StringReplace(lJson, '}",', '},', [rfReplaceAll]);
      lJson := StringReplace(lJson, '\"', '"', [rfReplaceAll]);
      var
      testPos := Pos('\"1', lJson);
      lJson := StringReplace(lJson, '\"1', ' 1', [rfReplaceAll]);
      lJson := StringReplace(lJson, '\\"', ' - ', [rfReplaceAll]);
      testPos := Pos('}"\"}"', lJson);
      lJson := StringReplace(lJson, '}"\"}"', '}}', [rfReplaceAll]);
      lJson := StringReplace(lJson, '}"}', '}}', [rfReplaceAll]);
    *)
    // lJson := StringReplace(lJson, '"COMUNE_FATTURAZIONE"', 'COMUNE_FATTURAZIONE', [rfReplaceAll]);
    memConfigurazioniHead.Lines.Text := JsonPretty(lClient.Content);
  end;
  lJsonObject := Janua.Core.JSON.JsonParse(lClient.Content);
  JsonValue(lJsonObject, 'Configurazione', lJson);
  memTmpConfigurazioni.Lines.Text := lJson;
  lJsonObject := Janua.Core.JSON.JsonParse(lJson);
  memConfigurazioni.Lines.Text := JsonPretty(lJsonObject);

end;

end.
