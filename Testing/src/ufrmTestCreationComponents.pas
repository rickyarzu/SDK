unit ufrmTestCreationComponents;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Janua.Core.Classes, Janua.Core.Functions,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, Janua.Core.System,
  Vcl.ComCtrls, superobject,
  AdvMemo, advmjson, System.JSON, Janua.Core.Health, AdvSplitter, Data.DB, MemDS, VirtualTable,
  Vcl.Grids, Vcl.DBGrids, CRGrid,
  DBAccess, AdvmWS, Vcl.OleCtrls, SHDocVw
  // Janua Core
    , Janua.Core.Servers, Janua.Core.Customcontrols, Janua.Core.Cloud, Janua.Core.Types, Janua.Core.Entities,
  Janua.Core.Metronics
  // Janua DB
    , Janua.Postgres.System, Janua.Postgres.Health
  // Janua VCL
    , {Janua.Vcl.Controls,} Janua.Vcl.Grids, Janua.Vcl.OS,
  Janua.Vcl.EnhDBGrid, Janua.Vcl.EnhCRDBGrid, Janua.Vcl.WebBrowser, Janua.Html.Intf, AdvmCSS,
  Janua.Components.Maps, Uni, UniProvider, OracleUniProvider;

type
  TfrmTestCreationComponents = class(TForm)
    // Janua Components .............
    JanuaGridController1: TJanuaGridController;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaVirtualDataset: TTabSheet;
    Panel1: TPanel;
    edUsername: TLabeledEdit;
    edPassword: TLabeledEdit;
    edAppName: TLabeledEdit;
    MainMenu1: TMainMenu;
    est1: TMenuItem;
    ComponentiBase1: TMenuItem;
    edCustomDir: TLabeledEdit;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    memCoreOS: TMemo;
    TabSheet4: TTabSheet;
    memLogger: TMemo;
    TabSheet5: TTabSheet;
    memApplication: TMemo;
    memVirtualDataset: TMemo;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    memSystem: TMemo;
    tabHealth: TTabSheet;
    memHealthBooking: TMemo;
    PostgresHealth1: TMenuItem;
    N1: TMenuItem;
    FreeBaseComponents1: TMenuItem;
    TabSheet12: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Memo6: TMemo;
    Button2: TButton;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    TabSheet6: TTabSheet;
    TabUserProfile: TTabSheet;
    memUserProfile: TAdvMemo;
    memUserProfileTarget: TAdvMemo;
    AdvSplitter1: TAdvSplitter;
    tabUserProfileSystem: TTabSheet;
    DataSource1: TDataSource;
    TabSheet7: TTabSheet;
    EnhCRDBGrid1: TEnhCRDBGrid;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EnhDBGrid1: TEnhDBGrid;
    Button3: TButton;
    JanuaGridController2: TJanuaGridController;
    JanuaGridController3: TJanuaGridController;
    tabGoogleGeoCoding: TTabSheet;
    PageControl4: TPageControl;
    tabGoogleCompletion: TTabSheet;
    tabGoogleGeoCodingAddress: TTabSheet;
    Panel3: TPanel;
    edGoogleAddress: TEdit;
    Button4: TButton;
    Panel4: TPanel;
    edGoogleSearchAddress: TEdit;
    Button5: TButton;
    memAddresses: TAdvMemo;
    memJsonAddresses: TAdvMemo;
    memGoogleCoordinates: TAdvMemo;
    lbLatitude: TLabel;
    lbLongitude: TLabel;
    tabMetronic: TTabSheet;
    PageControl5: TPageControl;
    TabSheet8: TTabSheet;
    Panel5: TPanel;
    Button6: TButton;
    MemoIcon3: TMemo;
    MemoIcon2: TMemo;
    MemoIcon1: TMemo;
    TabSheet9: TTabSheet;
    Panel6: TPanel;
    LabeledEdit1: TLabeledEdit;
    Button7: TButton;
    EnhCRDBGrid2: TEnhCRDBGrid;
    TabSheet10: TTabSheet;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    PageControl6: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    Panel7: TPanel;
    Button8: TButton;
    PageControl7: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    memHtml5: TAdvMemo;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    Button9: TButton;
    tabTestHtmlFunctions: TTabSheet;
    Panel8: TPanel;
    Button10: TButton;
    AdvMemo2: TAdvMemo;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    VirtualTable1: TVirtualTable;
    OracleUniProvider1: TOracleUniProvider;
    table: TJanuaUniConnection;
    UniTable1: TUniTable;
    OrdDataSource: TUniDataSource;

    procedure Button1Click(Sender: TObject);
    procedure PostgresHealth1Click(Sender: TObject);
    procedure FreeBaseComponents1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JanuaGridController1NeedColor(var aColor: TColor);
    procedure JanuaGridController2NeedColor(var aColor: TColor);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private // Records Testa
    rSession: TJanuaServerSession;
  private
    { Private declarations }
    fWBW1: TWebBrowserWrapper;
    fWBW2: TWebBrowserWrapper;
{$IFDEF UNICODE}
    fSampleEncoding: TEncoding;
{$ENDIF}
    JanuaCoreLogger: TJanuaCoreLogger;
    JanuaPostgresSystem: Janua.Postgres.System.TJanuaPostgresSystem;
    JanuaHealthBooking: Janua.Postgres.Health.TJanuaServerHealthBooking;
    JanuaJsonDacDataset: TJanuaJsonDacDataset;
    JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
  public
    { Public declarations }
    H5: IHtmlHelper;
    M5: IHtmlHelper;
  end;

var
  frmTestCreationComponents: TfrmTestCreationComponents;

implementation

uses Janua.Uni.Framework, Janua.Html.Types, Janua.Html.Impl, Janua.Html.Metro5.Impl,
  Janua.Application.Framework,
  System.Generics.Collections;

function FormatJson(InString: WideString): string; // Input string is "InString"
var
  JSON: ISuperObject;
begin
  JSON := TSuperObject.ParseString(PWideChar(InString), True);
  Result := JSON.AsJson(True, false); // Here comes your result: pretty-print JSON
end;

{$R *.dfm}

procedure TfrmTestCreationComponents.Button10Click(Sender: TObject);
var
  Item: TPair<Janua.Html.Types.THtmlStyle, THmtlStyleCheck>;
  s: string;
  b: boolean;
  // Enumerable: IEnumerable<string, string>;
begin
  b := Check(THtmlStyle.AlignContent, 'center');

  for Item in Janua.Html.Types.StyleChecks do
  begin
    // Result := Result + ' ' + Item.Key + '="' + Item.Value + '" ';
    self.AdvMemo2.Lines.Add(TEnumConvertor<THtmlStyle>.ToString(Item.Key) + ' {');

    if Item.Value.C then
      for s in Item.Value.V do
        AdvMemo2.Lines.Add(Indent(3, 1) + HtmlStyle[Item.Key] + ': ' + s)
    else
      AdvMemo2.Lines.Add(Indent(3, 1) + HtmlStyle[Item.Key] + ': ' + Item.Value.D);

    self.AdvMemo2.Lines.Add('}');
  end;

end;

procedure TfrmTestCreationComponents.Button1Click(Sender: TObject);
var
  aJsonObject: TJsonObject;
  aProfile: TJanuaRecordUserProfile;
  test: string;
begin
  try
    (*
      JanuaCoreOS := TJanuaCoreOS.Create(self);
      JanuaCoreOS.CustomServer := True;
      JanuaCoreOS.AppName := self.edAppName.Text;
      JanuaCoreOS.Directory := self.edCustomDir.Text;
      JanuaCoreOS.Deactivate;
    *)

    self.memCoreOS.Lines.Add('JanuaCoreOS1 Creato ed Attivato');
    self.memCoreOS.Lines.Add('HomePath: ' + TJanuaCoreOS.HomePath);
    self.memCoreOS.Lines.Add('Log: ');
    self.memCoreOS.Lines.Text := TJanuaLogger.LogString;

    memCoreOS.Lines.Add('JanuaCoreLogger Creo');
    JanuaCoreLogger := TJanuaCoreLogger.Create(self);
    JanuaCoreLogger.IsCustomServer := True;
    JanuaCoreLogger.LogType := TJanuaLogType.jltLog;
    JanuaCoreLogger.LogMessage := JanuaCoreLogger.LogFileName;
    memCoreOS.Lines.Add('JanuaCoreLogger Eseguo');
    JanuaCoreLogger.Execute;
    JanuaCoreLogger.LogType := TJanuaLogType.jltError;
    memCoreOS.Lines.Add('JanuaCoreLogger Terminato');

    begin
      self.memLogger.Lines.Add('JanuaCoreLogger Creato ed Attivato');
      self.memLogger.Lines.Add('FileName: ' + JanuaCoreLogger.LogFileName);
      self.memLogger.Lines.Add('Log: ');
      self.memLogger.Lines.Text := TJanuaLogger.LogString;
    end;

    TJanuaApplication.AppName := self.edAppName.Text;
    TJanuaApplication.Protocol := TJanuaProtocol.jtpHttps;
    TJanuaApplication.AssetsUrl := 'app.ergomercator.com/';
    TJanuaApplication.SiteAddess := 'app.ergomercator.com/Dico33/';

    begin
      self.memApplication.Lines.Add('JanuaApplicationProfile Creato ed Attivato');
      self.memApplication.Lines.Add('Site Address: ' + TJanuaApplication.SiteAddess);
      self.memApplication.Lines.Add('Log: ');
      self.memApplication.Lines.Text := TJanuaLogger.LogString;
    end;

    self.memApplication.Lines.Add('Global Applicatio Profile: ');
    self.memApplication.Lines.Add(TJanuaApplication.GetConfiguration);
    JanuaPostgresSystem := Janua.Postgres.System.TJanuaPostgresSystem.Create(self);
    JanuaPostgresSystem.Name := 'JanuaPostgresSystem1';
    JanuaPostgresSystem.Username := self.edUsername.Text;
    JanuaPostgresSystem.Password := self.edPassword.Text;
    JanuaPostgresSystem.KeepAlive := True;

    if JanuaPostgresSystem.Login then
      JanuaPostgresSystem.Activate;

    begin
      self.memSystem.Lines.Add('JanuaPostgresSystem Creato ed Attivato');
      self.memSystem.Lines.Add('ServerUrl: ' + TJanuaApplication.SiteAddess);
      self.memSystem.Lines.Add('Log: ');
      self.memSystem.Lines.Add(TJanuaLogger.LogString);
    end;

    try
      self.memSystem.Lines.Add('Esportazione sessione');
      self.memSystem.Lines.Add(JanuaPostgresSystem.JanuaServerSession.AsJsonObject.ToString);
      aJsonObject := JanuaPostgresSystem.JanuaServerSession.AsJsonObject;
      test := aJsonObject.GetValue('key').Value;
      self.rSession.LoadFromJsonObject(JanuaPostgresSystem.JanuaServerSession.AsJsonObject);
      self.memSystem.Lines.Add('Importazione terminata correttamente');
    except
      on e: exception do
        self.memSystem.Lines.Add('errore lettura session: ' + e.Message);
    end;

    try
      JanuaJsonDacDataset := TJanuaJsonDacDataset.Create(self);
      JanuaJsonDacDataset.Name := 'vtJanuaJsonDacDataset';
      JanuaJsonDacDataset.IsVirtualTable := True;
    except
      on e: exception do
        self.memSystem.Lines.Add('errore creazione TJanuaJsonDacDataset: ' + e.Message);
    end;

    begin
      self.memVirtualDataset.Lines.Add('TJanuaJsonDacDataset Creato non Attivato');
      self.memVirtualDataset.Lines.Add('TableName: ' + JanuaJsonDacDataset.MemDataset.Name);
      self.memVirtualDataset.Lines.Add('Log: ');
      self.memVirtualDataset.Lines.Add(TJanuaLogger.LogString);
    end;

    try
      JanuaHealthBooking := Janua.Postgres.Health.TJanuaServerHealthBooking.Create(self);
      JanuaHealthBooking.JanuaServerSystem := self.JanuaPostgresSystem;
      JanuaHealthBooking.AppUrl := 'dico33.com';
    except
      on e: exception do
        self.memVirtualDataset.Lines.Add('errore creazione JanuaHealthBooking: ' + e.Message);
    end;

    try
      aJsonObject := JanuaPostgresSystem.UserProfile.AsJsonObject;
      self.memUserProfile.Lines.Text := FormatJson(aJsonObject.ToJSON);
      aProfile.LoadFromJsonObject(aJsonObject);
      self.memUserProfileTarget.Lines.Text := FormatJson(aProfile.AsJsonObject.ToJSON);
      if JanuaPostgresSystem.CheckNewUser(aProfile) then
        self.memUserProfile.Lines.Add('JanuaPostgresSystem.CheckNewUser(aProfile )= True')
      else
        self.memUserProfile.Lines.Add('JanuaPostgresSystem.CheckNewUser(aProfile )= False');

    finally

    end;

  except
    on e: exception do
      memCoreOS.Lines.Add('Errore non Gestito: ' + e.Message);

  end;
end;

procedure TfrmTestCreationComponents.Button2Click(Sender: TObject);
begin
  // self.JanuaVCLTestControllers1.TestComponent
end;

procedure TfrmTestCreationComponents.Button3Click(Sender: TObject);
begin
  VirtualTable1.Close;
  VirtualTable1.FieldDefs.Clear;
  VirtualTable1.AddField('integer', TFieldType.ftInteger, 0, True);
  VirtualTable1.AddField('string', TFieldType.ftWideString, 20, True);
  VirtualTable1.AddField('boolean', TFieldType.ftBoolean, 0, True);
  VirtualTable1.Open;

  VirtualTable1.Append;
  VirtualTable1.FieldByName('integer').AsInteger := 1;
  VirtualTable1.FieldByName('string').AsWideString := 'primo record';
  VirtualTable1.FieldByName('boolean').AsBoolean := True;

  VirtualTable1.Append;
  VirtualTable1.FieldByName('integer').AsInteger := 2;
  VirtualTable1.FieldByName('string').AsWideString := 'secondo record';
  VirtualTable1.FieldByName('boolean').AsBoolean := false;

  VirtualTable1.Append;
  VirtualTable1.FieldByName('integer').AsInteger := 3;
  VirtualTable1.FieldByName('string').AsWideString := 'terzo record';
  VirtualTable1.FieldByName('boolean').AsBoolean := True;
  VirtualTable1.Post;

end;

procedure TfrmTestCreationComponents.Button4Click(Sender: TObject);
begin
  if not Assigned(self.JanuaGoogleGeoCoding) then
    JanuaGoogleGeoCoding := TJanuaGoogleGeoCoding.Create(self);

  JanuaGoogleGeoCoding.Language := TJanuaLanguage.jlaItalian;
  JanuaGoogleGeoCoding.ISOLanguage.Language := TJanuaLanguage.jlaItalian;
  JanuaGoogleGeoCoding.ISOCountry.ISOCountry := TJanuaIsoCountries.jicItalia;
  JanuaGoogleGeoCoding.Address := self.edGoogleAddress.Text;
  JanuaGoogleGeoCoding.GetSuggestions;
  self.edGoogleSearchAddress.Text := self.JanuaGoogleGeoCoding.AddressText[0];
  memAddresses.Lines.Clear;
  self.memAddresses.Lines.AddStrings(self.JanuaGoogleGeoCoding.AddressText);
  memJsonAddresses.Lines.Clear;
  self.memJsonAddresses.Lines.AddStrings(self.JanuaGoogleGeoCoding.ResponseText);
end;

procedure TfrmTestCreationComponents.Button5Click(Sender: TObject);
begin
  if not Assigned(self.JanuaGoogleGeoCoding) then
    JanuaGoogleGeoCoding := TJanuaGoogleGeoCoding.Create(self);
  JanuaGoogleGeoCoding.Language := TJanuaLanguage.jlaItalian;
  JanuaGoogleGeoCoding.ISOLanguage.Language := TJanuaLanguage.jlaItalian;
  JanuaGoogleGeoCoding.ISOCountry.ISOCountry := TJanuaIsoCountries.jicItalia;
  JanuaGoogleGeoCoding.Address := self.edGoogleSearchAddress.Text;
  JanuaGoogleGeoCoding.GetCoordinates;
  self.lbLatitude.Caption := self.JanuaGoogleGeoCoding.Coordinates.Latitude.ToString;
  self.lbLongitude.Caption := self.JanuaGoogleGeoCoding.Coordinates.Longitude.ToString;
  self.memGoogleCoordinates.Lines.Clear;
  self.memGoogleCoordinates.Lines.AddStrings(self.JanuaGoogleGeoCoding.ResponseText);

end;

procedure TfrmTestCreationComponents.Button6Click(Sender: TObject);
var
  i: TMetroIcon;
  sIcon: string;
begin
  for i := Low(TMetroIcon) to High(TMetroIcon) do
  begin
    sIcon := TEnumConvertor<TMetroIcon>.ToString(i) + ' = ' + MetroIcons[i];
    if (Ord(i) mod 3) = 0 then
      MemoIcon3.Lines.Add(sIcon)
    else if (Ord(i) mod 2) = 0 then
      MemoIcon2.Lines.Add(sIcon)
    else
      MemoIcon1.Lines.Add(sIcon)
  end;
end;

procedure TfrmTestCreationComponents.Button7Click(Sender: TObject);
begin
  TUniFramework.OraDatasetFunctions.OpenThreadedDataset(self.UniTable1);
end;

procedure TfrmTestCreationComponents.Button8Click(Sender: TObject);
var
  aPage: TJanuaHtmlPage;
  temp: TJanuaHtmlObject;
begin
  aPage := TJanuaHtmlPage.Create;
  try
    temp := TJanuaHtmlObject.Create(self.H5, 'body');
    temp.AddSimpleTag('h1', 'Ciao Mondo', false);
    aPage.Add(temp);

    self.memHtml5.Lines.Text := aPage.AsHtml;
    fWBW2.LoadFromString(memHtml5.Lines.Text);
  finally
    aPage.Free;
  end;
end;

procedure TfrmTestCreationComponents.Button9Click(Sender: TObject);
begin
  with TJanuaHtmlObject.Create(self.H5, 'h1', 'Ciao mondo', false) do
    self.memHtml5.Lines.Text := AsHtml;
end;

procedure TfrmTestCreationComponents.FormCreate(Sender: TObject);
begin
  fWBW1 := TWebBrowserWrapper.Create(self.WebBrowser1);
  fWBW2 := TWebBrowserWrapper.Create(self.WebBrowser2);
{$IFDEF UNICODE}
  Caption := 'Article#14 Demo [Unicode version]';
  fSampleEncoding := TEncoding.Default; // ANSI
{$ELSE}
  Caption := 'Article#14 Demo [ANSI version]';
{$ENDIF}
  self.H5 := Janua.Html.Impl.THtmlHelper.Create;
  self.M5 := Janua.Html.Metro5.Impl.TMetro5HtmlHelper.Create;

end;

procedure TfrmTestCreationComponents.FreeBaseComponents1Click(Sender: TObject);
begin
  self.JanuaCoreLogger.Free;
end;

procedure TfrmTestCreationComponents.JanuaGridController1NeedColor(var aColor: TColor);
begin
  if not self.VirtualTable1.FieldByName('boolean').AsBoolean then
    aColor := clRed;
end;

procedure TfrmTestCreationComponents.JanuaGridController2NeedColor(var aColor: TColor);
begin
  if not self.VirtualTable1.FieldByName('boolean').AsBoolean then
    aColor := clRed;
end;

procedure TfrmTestCreationComponents.PostgresHealth1Click(Sender: TObject);
begin
  JanuaHealthBooking := Janua.Postgres.Health.TJanuaServerHealthBooking.Create(self);
  JanuaHealthBooking.JanuaServerSystem := self.JanuaPostgresSystem;

  begin
    self.memHealthBooking.Lines.Add('JanuaPostgresSystem Creato ed Attivato');
    // self.memHealthBooking.Lines.Add('Service: ' + JanuaHealthBooking.Booking.service);
    self.memHealthBooking.Lines.Add('Log: ');
    self.memHealthBooking.Lines.Add(TJanuaLogger.LogString);
  end;

end;

end.
