unit udmRSSFeed;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.System, Janua.Core.Classes,
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, Soap.XSBuiltIns,
  Janua.Core.Functions, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, System.Variants, Xml.adomxmldom;

type
  TdmFeedReader = class(TDataModule)
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    procedure DataModuleCreate(Sender: TObject);
  private
    FFeeds: TJanuaFeeds;
    FADPXMLBLOG: string;
    FRSSTags: TJanuaRSSTAg;
    FLog: TStringList;
    FXmlText: TStringList;
    procedure SetFeeds(const Value: TJanuaFeeds);
    procedure SetADPXMLBLOG(const Value: string);
    procedure SetLog(const Value: TStringList);
    procedure SetRSSTags(const Value: TJanuaRSSTAg);
    procedure SetXmlText(const Value: TStringList);
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshFeeds;
    procedure WriteLog(log: string);
  published
    property Feeds: TJanuaFeeds read FFeeds write SetFeeds;
    property ADPXMLBLOG: string read FADPXMLBLOG write SetADPXMLBLOG;
    property XmlText: TStringList read FXmlText write SetXmlText;
    property Log: TStringList read FLog write SetLog;
    property RSSTags: TJanuaRSSTAg read FRSSTags write SetRSSTags;
  end;

var
  dmFeedReader: TdmFeedReader;

implementation

{$R *.dfm}

procedure TdmFeedReader.DataModuleCreate(Sender: TObject);
begin
  self.FLog := TStringList.Create;
  self.FXmlText := TStringList.Create;
end;

procedure TdmFeedReader.RefreshFeeds;
var
  strUrl: string;
  strXml: string;
  title, author, pubDate, url: string;
  I, J: Integer;
  ChannelNode, ItemNode: IXMLNode;
begin
   FFeeds.RSSTags := self.FRSSTags;

   self.WriteLog(self.FFeeds.RSSTags.ToString);
   strUrl := self.FADPXMLBLOG;

  try
    IdHTTP1 :=  TIdHTTP.Create(nil);
    try
      strXml := IdHTTP1.Get (strUrl);
      self.FXmlText.Text := strXml;
    finally
      FreeAndNil(IdHTTP1);
    end;
  except
    on E: Exception do
    begin
      self.WriteLog('Errore IdHTTP1 Get: ' + e.Message);
      Exit;
    end;
  end;


  XMLDocument1 := TXMLDocument.Create(nil);
  try
  XMLDocument1.LoadFromXML(strXml);
  XMLDocument1.Active := True;

  self.WriteLog( 'Processing RSS');

  try
    self.WriteLog('XMLDocument1.DocumentElement.ChildNodes.FindNode (channel)');
    ChannelNode := XMLDocument1.DocumentElement.ChildNodes.FindNode ('channel');
    self.WriteLog('trovato channel Node count: ' + ChannelNode.ChildNodes.Count.ToString );
    j := 0;
    for I := 0 to ChannelNode.ChildNodes.Count - 1 do
    begin
      ItemNode := ChannelNode.ChildNodes[I];
      if ItemNode.NodeName = self.FFeeds.RSSTags.Item then
      begin
        Inc(j);
        SetLength(self.FFeeds.Feeds, j);
        self.WriteLog( 'Processing Node ' + I.ToString);
        self.FFeeds.Feeds[j-1].Title  := ItemNode.ChildValues [self.FFeeds.RSSTags.Title];

        if ItemNode.ChildValues [self.FFeeds.RSSTags.Date] > '' then
        begin
            with TXSDateTime.Create() do
            try
               XSToNative(ItemNode.ChildValues [self.FFeeds.RSSTags.Title]); // convert from WideString
               self.FFeeds.Feeds[j-1].Date := AsDateTime; // convert to TDateTime
            finally
              Free;
            end;
        end;
        self.FFeeds.Feeds[j-1].AbstractText := ItemNode.ChildValues [self.FFeeds.RSSTags.Description];
        //if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Author]) then
        self.FFeeds.Feeds[j-1].Author := VarToStr(ItemNode.ChildValues [self.FFeeds.RSSTags.Author]);
        //if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Link]) then
        self.FFeeds.Feeds[j-1].LinkUrl := VarToStr(ItemNode.ChildValues [self.FFeeds.RSSTags.Link]);
        //if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Image]) then
        self.FFeeds.Feeds[j-1].Image := VarToStr(ItemNode.ChildValues [self.FFeeds.RSSTags.Image]);
        //if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Text]) then
        self.FFeeds.Feeds[j-1].Text := VarToStr(ItemNode.ChildValues [self.FFeeds.RSSTags.Text]);
        self.WriteLog(self.FFeeds.Feeds[j-1].Title);
      end;
    end;
  except on e:exception do
    begin
      self.WriteLog('Errore RSS');
      self.WriteLog(e.Message);
      self.WriteLog(e.BaseException.ToString);
    end;
  end;
  self.WriteLog( 'RSS Processed');

  self.WriteLog( self.FFeeds.ToString);
  finally
    FreeAndNil(XMLDocument1);
  end;


end;


procedure TdmFeedReader.SetADPXMLBLOG(const Value: string);
begin
  FADPXMLBLOG := Value;
end;

procedure TdmFeedReader.SetFeeds(const Value: TJanuaFeeds);
begin
  FFeeds := Value;
end;

procedure TdmFeedReader.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

procedure TdmFeedReader.SetRSSTags(const Value: TJanuaRSSTAg);
begin
  FRSSTags := Value;
end;

procedure TdmFeedReader.SetXmlText(const Value: TStringList);
begin
  FXmlText := Value;
end;

procedure TdmFeedReader.WriteLog(log: string);
begin

end;

end.
