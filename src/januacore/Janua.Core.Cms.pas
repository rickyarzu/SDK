unit Janua.Core.Cms;

interface

uses Janua.Core.System, Janua.Core.Jpublic, System.SysUtils, System.Classes, DB,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Soap.XSBuiltIns, System.JSON,
  Janua.Core.Servers, Janua.Core.Types,
  Janua.Core.Classes, System.Variants, IdHTTP;

Type
  TJanuaRSSFeedReader = class(TJanuaCoreComponent)
  private
    FXmlText: TStrings;
    FFeeds: TJanuaFeeds;
    FADPXMLBLOG: string;
    FADPLocalFile: TFileName;
    FVerified: Boolean;
    FUseText: Boolean;
    FTagTitle: string;
    FTagText: string;
    FTagLink: string;
    FTagImage: string;
    FTagItem: string;
    FSourceType: TJanuaRSSFeedType;
    FRSSTags: TJanuaRSSTags;
    FTagDescription: string;
    FTagAuthor: string;
    FTagDate: string;
    procedure SetADPLocalFile(const Value: TFileName);
    procedure SetADPXMLBLOG(const Value: string);
    procedure SetXmlText(const Value: TStrings);
    procedure SetUseText(const Value: Boolean);
    procedure SetVerified(const Value: Boolean);
    procedure SetTagImage(const Value: string);
    procedure SetTagLink(const Value: string);
    procedure SetTagText(const Value: string);
    procedure SetTagTitle(const Value: string);
    procedure SetTagItem(const Value: string);
    procedure SetSourceType(const Value: TJanuaRSSFeedType);
    procedure SetRSSTags(const Value: TJanuaRSSTags);
    procedure SetTagAuthor(const Value: string);
    procedure SetTagDate(const Value: string);
    procedure SetTagDescription(const Value: string);
  strict protected
    function InternalActivate: Boolean; override;
  public
    function DownloadURLFile: Boolean;
    function DownloadUrlText: Boolean;
    procedure CreateList;
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure RefreshFeeds;
  published
    property ADPXMLBLOG: string read FADPXMLBLOG write SetADPXMLBLOG;
    property ADPLocalFile: TFileName read FADPLocalFile write SetADPLocalFile;
    property XmlText: TStrings read FXmlText write SetXmlText;
    property UseText: Boolean read FUseText write SetUseText;
    property Verified: Boolean read FVerified write SetVerified;
    property TagTitle: string read FTagTitle write SetTagTitle;
    property TagLink: string read FTagLink write SetTagLink;
    property TagImage: string read FTagImage write SetTagImage;
    property TagText: string read FTagText write SetTagText;
    property TagItem: string read FTagItem write SetTagItem;
    property TagDescription: string read FTagDescription write SetTagDescription;
    property TagDate: string read FTagDate write SetTagDate;
    property TagAuthor: string read FTagAuthor write SetTagAuthor;
    property Feeds: TJanuaFeeds read FFeeds;
    property RSSTags: TJanuaRSSTags read FRSSTags write SetRSSTags;
    property SourceType: TJanuaRSSFeedType read FSourceType write SetSourceType default jrtStandard;
  end;

type
  TJanuaContactRecord = record
    ContactName: string;
    ContactTitle: string;
    ContactEmail: string;
    ContactObject: string;
    ContactText: string;
  end;

type
  TJanuaCustomServerContactForms = class(TJanuaCustomServer)
  private
  protected
  public
  published

  end;

  TJanuaTemplateType = (jttHead, jttHtmlHeader, httHtmlMenu, jttHtmlFooter, jttTabHeader, jttTabBody);

type
  CmsTemplate = record
    id: integer;
    name: string;
    TemplateType: TJanuaTemplateType;
  public
    procedure Reset;
    function ToString: string;
    function ToJson: string;
    procedure SetFromDataset(aThemes: TDataset);
    procedure SaveToDataset(aThemes: TDataset);
  end;

type
  CmsTheme = record
    id: integer;
    name: string;
    Description: string;
    Templates: array of CmsTemplate;
  public
    procedure Reset;
    function ToJsonObject: TJsonObject;
    function ToString: string;
    function ToJson: TStrings;
    procedure SetFromDataset(aThemes: TDataset);
    procedure SaveToDataset(aThemes: TDataset);
  end;

type
  CmsThemes = record
    Themes: array of CmsTheme;
  public
    function Count: integer;
    procedure Reset;
    function ToString: string;
    function ToJson: TStrings;
    procedure SetFromDataset(aThemes: TDataset);
  end;

type
  TJanuaCustomServerCms = class(TJanuaCustomServer)
  private
    FTemplate: string;
    FThemeID: integer;
    procedure SetTemplate(const Value: string);
    procedure SetThemeID(const Value: integer);
  protected
    procedure InternalGetTemplate; virtual; abstract;
  public
    function GetTemplate(themid: integer; template_name: string): string;
  published
    property Template: string read FTemplate write SetTemplate;
    property ThemeID: integer read FThemeID write SetThemeID;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, Janua.Core.JSON;

{ TCmsRSSFeedReader }

constructor TJanuaRSSFeedReader.Create(AOwner: TComponent);
begin
  inherited;
  FXmlText := TStringList.Create;
  self.FSourceType := jrtStandard;
  self.FTagTitle := 'title';
  self.FTagLink := 'link';
  self.FTagText := 'description';
  self.FTagImage := 'image';
  self.FTagItem := 'item';
  FADPLocalFile := tpl(TJanuaCoreOS.TempPath) + 'temp.xml';
end;

procedure TJanuaRSSFeedReader.CreateList;
var
  // ADPLocalFile: TFileName;
  // = 'http://z.about.com/6/g/delphi/b/index.xml';
  // StartItemNode: IXMLNode;
  ANode: IXMLNode;
  i: integer;
  XMLDoc: TXMLDocument;
  temp: string;
begin
  try
    if not Active then
      Exit;
    FFeeds.Url := FADPXMLBLOG;
    XMLDoc := TXMLDocument.Create(nil);
    try
      // if not DownloadURLFile  then
      if not self.DownloadUrlText then
      begin
        self.WriteLog('TJanuaRSSFeedReader.CreateList Errore procedura di scaricamento del file');
        LocalRaiseException('TJanuaRSSFeedReader.CreateList Errore nello scaricamento del file!');
        Exit;
      end;
      // XMLDoc.XML.Text :=
      // XMLDoc.FileName := ADPLocalFile;
      self.WriteLog('XMLDoc.LoadFromXML');
      temp := self.FXmlText.Text;
      XMLDoc.LoadFromXML(temp);
      self.WriteLog('XMLDoc.Active');
      XMLDoc.Active := true;
      self.WriteLog(XMLDoc.Xml.Text);
      self.WriteLog('setLength(FFeeds.Feeds, 0);');
      setLength(FFeeds.Feeds, 0);
      self.WriteLog('StartItemNode:=XMLDoc.DocumentElement ' + self.FTagItem);
      ANode := XMLDoc.DocumentElement.ChildNodes.FindNode(self.FTagItem);
      self.WriteLog(ANode.ChildNodes[self.FTagTitle].Text);

      if ANode = nil then
      begin
        self.WriteLog('primo nodo: ' + self.FTagItem + ' non trovato');
        Exit;
      end;

      // StartItemNode:=XMLDoc.DocumentElement.ChildNodes.First.ChildNodes.FindNode(self.FTagItem);
      self.WriteLog('ANode := StartItemNode');
      // ANode := StartItemNode;
      i := 0;
      repeat
        Inc(i);
        self.WriteLog('SetLength(FFeeds.Feeds, i) i =' + IntToStr(i));
        setLength(FFeeds.Feeds, i);
        FFeeds.Feeds[i - 1].Title := ANode.ChildNodes[self.FTagTitle].Text;
        FFeeds.Feeds[i - 1].LinkUrl := ANode.ChildNodes[self.FTagLink].Text;
        FFeeds.Feeds[i - 1].AbstractText := Janua.Core.Functions.StripstringHtml(ANode.ChildNodes[self.FTagText].Text);
        ANode := ANode.NextSibling;
        self.WriteLog(self.FFeeds.Feeds[i - 1].Title + sLineBreak);
      until ANode = nil;
    finally
      // DeleteFile(ADPLocalFile);
      XMLDoc.Free
    end;
  except
    on e: Exception do
      self.WriteLog('Errore TJanuaRSSFeedReader.CreateList' + e.Message);
  end;
end;

destructor TJanuaRSSFeedReader.Destroy;
begin
  if Assigned(FXmlText) then
  begin
    FXmlText.Free;
    FXmlText := nil;
  end;
  inherited;
end;

function TJanuaRSSFeedReader.DownloadURLFile: Boolean;
var
  fsSource: TFileStream;
  IdHTTP1: TIdHTTP;
begin

  // procedura di File Dowloading del Mac ......................................
  if FileExists(FADPLocalFile) then
  begin
    fsSource := TFileStream.Create(FADPLocalFile, fmOpenWrite);
  end
  else
  begin
    fsSource := TFileStream.Create(FADPLocalFile, fmCreate);
  end;

  IdHTTP1 := TIdHTTP.Create(nil);
  try
    IdHTTP1.Get(FADPXMLBLOG, fsSource);
    Result := true;
  finally
    fsSource.Free;
    IdHTTP1.Free;
  end;

end;

function TJanuaRSSFeedReader.DownloadUrlText: Boolean;
var
  IdHTTP1: TIdHTTP;
  fsSource: string;
begin
  Result := true;
  try
    IdHTTP1 := TIdHTTP.Create(nil);
    // fsSource := TMemoryStream.Create;
    try
      self.WriteLog('Caricamento RSS su TXT: ' + sLineBreak + FADPXMLBLOG);
      fsSource := IdHTTP1.Get(FADPXMLBLOG);
      // fsSource.Position := 0;
      self.FXmlText.Text := fsSource;
    finally
      IdHTTP1.Free;
      // fsSource.Free;
    end;
  except
    on e: Exception do
    begin
      Result := False;
      self.WriteError('TJanuaRSSFeedReader.DownloadUrlText: ', e, False);
    end;
  end;
end;

function TJanuaRSSFeedReader.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        { TODO -cHttp : Implement TJanuaRSSFeedReader Activate }
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TJanuaRSSFeedReader.RefreshFeeds;
begin
  self.WriteLog('TJanuaRSSFeedReader.RefreshFeeds Errore Refresh funzione non implementata');
  { TODO -oRiccardo -cRSS : Implementare funzione RSS Feed }
end;

procedure TJanuaRSSFeedReader.SetADPLocalFile(const Value: TFileName);
begin
  FADPLocalFile := Value;
end;

procedure TJanuaRSSFeedReader.SetADPXMLBLOG(const Value: string);
begin
  FADPXMLBLOG := Value;
end;

procedure TJanuaRSSFeedReader.SetRSSTags(const Value: TJanuaRSSTags);
begin
  FRSSTags := Value;
end;

procedure TJanuaRSSFeedReader.SetSourceType(const Value: TJanuaRSSFeedType);
begin
  FSourceType := Value;
end;

procedure TJanuaRSSFeedReader.SetTagAuthor(const Value: string);
begin
  FTagAuthor := Value;
end;

procedure TJanuaRSSFeedReader.SetTagDate(const Value: string);
begin
  FTagDate := Value;
end;

procedure TJanuaRSSFeedReader.SetTagDescription(const Value: string);
begin
  FTagDescription := Value;
end;

procedure TJanuaRSSFeedReader.SetTagImage(const Value: string);
begin
  FTagImage := Value;
  self.FRSSTags.Image.Image := Value;
end;

procedure TJanuaRSSFeedReader.SetTagItem(const Value: string);
begin
  FTagItem := Value;
  self.FRSSTags.Item.Item := Value;
end;

procedure TJanuaRSSFeedReader.SetTagLink(const Value: string);
begin
  FTagLink := Value;
  self.FRSSTags.Link := self.FTagLink;
end;

procedure TJanuaRSSFeedReader.SetTagText(const Value: string);
begin
  FTagText := Value;
  // ?????????????????????????????????????????????????????????
  // self.FRSSTags.Item. := self.FTagText;
end;

procedure TJanuaRSSFeedReader.SetTagTitle(const Value: string);
begin
  FTagTitle := Value;
  self.FRSSTags.Title := self.FTagTitle;
end;

procedure TJanuaRSSFeedReader.SetUseText(const Value: Boolean);
begin
  FUseText := Value;
end;

procedure TJanuaRSSFeedReader.SetVerified(const Value: Boolean);
begin
  FVerified := Value;
  if Value then
    self.RefreshFeeds;
end;

procedure TJanuaRSSFeedReader.SetXmlText(const Value: TStrings);
begin
  if Assigned(self.FXmlText) and Assigned(Value) then
    FXmlText.Assign(Value)
  else if Assigned(self.FXmlText) and not Assigned(Value) then
    self.FXmlText.Clear
  else
    self.FXmlText := Value;
end;

{ Themes }

function CmsThemes.Count: integer;
begin
  Result := Length(self.Themes);
end;

procedure CmsThemes.Reset;
begin
  setLength(self.Themes, 0);
end;

procedure CmsThemes.SetFromDataset(aThemes: TDataset);
var
  i: integer;
begin
  Reset;
  if Assigned(aThemes) and aThemes.Active and (aThemes.RecordCount > 0) then
  begin
    setLength(Themes, aThemes.RecordCount);
    aThemes.First;
    i := 0;
    while not aThemes.Eof do
    begin
      self.Themes[i].SetFromDataset(aThemes);
      aThemes.Next;
      Inc(i);
    end;
  end;
end;

function CmsThemes.ToJson: TStrings;
begin
  Result := TStringList.Create;
end;

function CmsThemes.ToString: string;
begin
  Result := '';
end;

{ CmsTemplate }

procedure CmsTemplate.Reset;
begin

end;

procedure CmsTemplate.SaveToDataset(aThemes: TDataset);
begin
  { TODO -cCms : Implement or delete CmsTemplate }
end;

procedure CmsTemplate.SetFromDataset(aThemes: TDataset);
begin
  { TODO -cCms : Implement or delete CmsTemplate }
end;

function CmsTemplate.ToJson: string;
begin
  { TODO -cCms : Implement or delete CmsTemplate }
end;

function CmsTemplate.ToString: string;
begin
  { TODO -cCms : Implement or delete CmsTemplate }
end;

{ TJanuaCustomServerCms }

function TJanuaCustomServerCms.GetTemplate(themid: integer; template_name: string): string;
begin

end;

procedure TJanuaCustomServerCms.SetTemplate(const Value: string);
begin
  FTemplate := Value;
end;

procedure TJanuaCustomServerCms.SetThemeID(const Value: integer);
begin
  FThemeID := Value;
end;

{ CmsTheme }

procedure CmsTheme.Reset;
begin

end;

procedure CmsTheme.SaveToDataset(aThemes: TDataset);
begin

end;

procedure CmsTheme.SetFromDataset(aThemes: TDataset);
begin

end;

function CmsTheme.ToJson: TStrings;
begin
  Result := TStringList.Create;
end;

function CmsTheme.ToJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
end;

function CmsTheme.ToString: string;
begin
  Result := JsonPretty(self.ToJsonObject);
end;

end.
