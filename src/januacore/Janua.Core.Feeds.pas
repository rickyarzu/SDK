unit Janua.Core.Feeds;

interface

{$I JANUACORE.INC}

uses Janua.Core.Classes, System.SysUtils, System.Classes, Janua.Core.Functions,
  Xml.XmlIntf,
  Generics.Collections,
  // System.Bindings.Expression, System.Bindings.Helper,
  System.TypInfo,
  Janua.Core.Sockets, Xml.XMLDoc, System.Variants;

Type
  TJanuaFeedReader = class(TJanuaCoreComponent)

  private
    FADPXMLBLOG: string;
    FFeeds: TJanuaFeeds;
    FRSSTags: TJanuaRSSTags;
    FXmlText: TStringList;
    FFeed_ID: Int64;
    procedure SetADPXMLBLOG(const Value: string);
    procedure SetFeed_ID(const Value: Int64);
    procedure SetFeeds(const Value: TJanuaFeeds);
    procedure SetRSSTags(const Value: TJanuaRSSTags);
    procedure SetXmlText(const Value: TStringList);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function RefreshFeeds: boolean;
  public
    property RSSTags: TJanuaRSSTags read FRSSTags write SetRSSTags;
    property Feeds: TJanuaFeeds read FFeeds write SetFeeds;
  published
    property ADPXMLBLOG: string read FADPXMLBLOG write SetADPXMLBLOG;
    property XmlText: TStringList read FXmlText write SetXmlText;
    property Feed_ID: Int64 read FFeed_ID write SetFeed_ID;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaFeedReader }

constructor TJanuaFeedReader.Create(AOwner: TComponent);
begin
  inherited;
  self.FXmlText := TStringList.Create;
  self.FFeed_ID := 0;
end;

destructor TJanuaFeedReader.Destroy;
begin
  FXmlText.Free;
  inherited;
end;

function TJanuaFeedReader.RefreshFeeds: boolean;
var
  strUrl: string;
  strXml: string;
  // UTF8: UTF8String;
  // InputString: string; // aliased to UnicodeString
  // title, author, pubDate, url: string;
  I, J: integer;
  ChannelNode, ItemNode: IXMLNode;
  tempfile: string;
  Year, Month, Day: word;
  Hour, Min, Sec, MSec: word;
  XMLDocument1: IXMLDocument;
begin
  // this is the core function of the feeds server system ----------------------------------------
  Result := False;
  try
    I := 0;
    FFeeds.RSSTags := self.FRSSTags;
    SetLength(FFeeds.Feeds, 0);
    self.WriteLog(self.FFeeds.RSSTags.ToString);
    strUrl := self.FADPXMLBLOG;
    // Server.Request.ContentType := 'application/x-www-form-urlencoded';
    {
      IdHTTP1.Request.Charset := 'utf-8';
      IdHTTP1.Request.ContentType := 'text/xml; charset=utf-8';
      IdHTTP1.Request.AcceptCharSet := 'UTF-8';
      UTF8 := IdHTTP1.Get (strUrl);
      strXml := System.UTF8ToUnicodeString(UTF8);
      self.FXmlText.Text := strXml;
    }
    if Copy(strUrl, 1, 5) = 'feed:' then
      strUrl := 'http:' + Copy(strUrl, 6, strUrl.Length - 6);

    DecodeDate(now, Year, Month, Day);
    DecodeTime(now, Hour, Min, Sec, MSec);
    tempfile := self.FFeed_ID.ToString + '_' + Year.ToString + Month.ToString() + Day.ToString + Hour.ToString +
      Min.ToString + Sec.ToString + MSec.ToString + '.xml';

    // ***** impostato il nome del file temporaneo *****************************
    try
      Result := GetInetFile(strUrl, IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile, 120000);
      /// la funzione GetInetFile carica dal web un file 'raw' questa funzione si può estendere con un
      /// time-out inoltre la medesima funzione potrebbe essere inserita nelle funzioni Core o VCL
      /// la funzione GetInetFile fa parte delle funzioni Janua.Core.Sockets.
      /// i parametri sono: il file di destinazione e il timeout....................................
      if Result then
      begin
        self.FXmlText.LoadFromFile(IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile);
        strXml := self.FXmlText.Text;
      end
      else
      begin
        strXml := '';
        FXmlText.Clear;
      end;
      // ***** impostato il nome del file temporaneo *****************************
    except
      on E: Exception do
      begin
        self.WriteError('Errore IdHTTP1 Get: ', E, False);
        Exit;
      end;
    end;

    // *********************************************************************************************
    try
      // XMLDocument1.LoadFromXML(strXml);
      // XMLDocument1.Encoding := 'UTF-8';
      XMLDocument1 := LoadXMLDocument(IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile);
      XMLDocument1.Active := True;
      // cancellato il file temporaneo .............................................
      self.WriteLog('Processing RSS');
      self.WriteLog('XMLDocument1.DocumentElement.ChildNodes.FindNode (channel)');
      // in qUESTO CONTESTO IL 'CANALE' di riferimento per gLI URL RSS è  'http://purl.org/rss/1.0/'
      ChannelNode := XMLDocument1.DocumentElement.ChildNodes.FindNode('channel', 'http://purl.org/rss/1.0/');
      // ChannelNode := XMLDocument1.DocumentElement.ChildNodes.FindNode('channel');
      if assigned(ChannelNode) then
        try
          self.WriteLog('trovato channel Node count: ' + ChannelNode.ChildNodes.Count.ToString);
          J := 0;
          for I := 0 to ChannelNode.ChildNodes.Count - 1 do
          begin
            ItemNode := ChannelNode.ChildNodes[I];
            if ItemNode.NodeName = self.FFeeds.RSSTags.Item.Item then
            begin
              Inc(J);
              SetLength(self.FFeeds.Feeds, J);
              self.WriteLog('Processing Node ' + I.ToString);
              self.FFeeds.Feeds[J - 1].title := VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.title]);
              { TODO -oRiccardo -cRSS : Verificare che self.FFEeeds.RSSTags.Date non sia nullo altrimenti fallisce la funzione VarToStr }
              if VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.pubDate]) > '' then
                self.FFeeds.Feeds[J - 1].Date := Janua.Core.Functions.XmlDateDecode
                  (ItemNode.ChildValues[self.FFeeds.RSSTags.pubDate]);
{$IFDEF FIREMONKEY}
              self.FFeeds.Feeds[J - 1].AbstractText := (ItemNode.ChildValues[self.FFeeds.RSSTags.Description]);
{$ELSE}
              self.FFeeds.Feeds[J - 1].AbstractText :=
                StripstringHtml(ItemNode.ChildValues[self.FFeeds.RSSTags.Description]);
{$ENDIF}


              // if length(FFeeds.Feeds[j-1].AbstractText) > 250 then
              // FFeeds.Feeds[j-1].AbstractText := Copy(FFeeds.Feeds[j-1].AbstractText,1, 250) + '...';

              // if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Author]) then
              self.FFeeds.Feeds[J - 1].author := VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.Item.author]);
              // if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Link]) then
              self.FFeeds.Feeds[J - 1].LinkUrl := VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.Item.Link]);
              // if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Image]) then
              self.FFeeds.Feeds[J - 1].Image := VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.Image.Image]);
              // if Assigned(ItemNode.ChildValues [self.FFeeds.RSSTags.Text]) then
              self.FFeeds.Feeds[J - 1].Text := (VarToStr(ItemNode.ChildValues[self.FFeeds.RSSTags.Description]));
              self.WriteLog(self.FFeeds.Feeds[J - 1].title);
            end;
          end;
        except
          on E: Exception do
          begin
            self.WriteLog('Errore RSS');
            self.WriteLog(E.Message);
            self.WriteLog(E.BaseException.ToString);
          end;
        end;

      if I > 0 then
        if DeleteFile(IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile) then
          WriteLog(IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile + ' deleted OK')
        else
          WriteLog(IncludeTrailingPathDelimiter(TJanuaCoreOS.GetAppTempPath) + tempfile + ' not deleted');
      self.WriteLog(self.FFeeds.ToString);
    finally
      self.WriteLog('RSS Processed');
    end;
    // **********************************************************************************************

  except
    on E: Exception do
      self.WriteError('Errore TJanuaFeedReader.RefreshFeeds', E, False);

  end;
end;

procedure TJanuaFeedReader.SetADPXMLBLOG(const Value: string);
begin
  FADPXMLBLOG := Value;
end;

procedure TJanuaFeedReader.SetFeeds(const Value: TJanuaFeeds);
begin
  FFeeds := Value;
end;

procedure TJanuaFeedReader.SetFeed_ID(const Value: Int64);
begin
  FFeed_ID := Value;
end;

procedure TJanuaFeedReader.SetRSSTags(const Value: TJanuaRSSTags);
begin
  FRSSTags := Value;
end;

procedure TJanuaFeedReader.SetXmlText(const Value: TStringList);
begin
  FXmlText := Value;
end;

end.
