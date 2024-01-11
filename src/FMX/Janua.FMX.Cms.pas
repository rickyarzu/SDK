unit Janua.FMX.Cms;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.ImageList,
  System.Generics.Collections, System.Net.HttpClientComponent,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.ImgList, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  // Janua
  Janua.Core.Classes, Janua.Cms.Types;

type
  TNewsContainer = class
  private
    FNews: TJanuaNews;
    procedure SetNews(const Value: TJanuaNews);
  public
    property News: TJanuaNews read FNews write SetNews;
  end;

type
  TJanuaFMXListThread = class(TThread)
  private
    FListView: TListView;
    FURL: string;
    FNews: TNewsContainer;
    FList: TList<string>;
    FImageList: TImageList;
    FServerUrl: string;
    procedure SetListView(const Value: TListView);
    procedure SetURL(const Value: string);
    procedure SetNews(const Value: TNewsContainer);
    procedure SetList(const Value: TList<string>);
    procedure SetImageList(const Value: TImageList);
    procedure SetServerUrl(const Value: string);
  protected
    procedure Execute; override;
  public
    property ListView: TListView read FListView write SetListView;
    property URL: string read FURL write SetURL;
    property ServerUrl: string read FServerUrl write SetServerUrl;
    property News: TNewsContainer read FNews write SetNews;
    property List: TList<string> read FList write SetList;
    property ImageList: TImageList read FImageList write SetImageList;
  end;

type
  TJanuaFMXListNews = class(TJanuaCoreComponent)
  private
    // FDataset: TJanuaJsonDacDataset;
    FListView: TListView;
    FImageList: TImageList;
    FSelectedItem: integer;
    FSelectedUrl: string;
    FOnSelectedItem: TNotifyEvent;
    FList: TList<string>;
    FTestJson: TStrings;
    FNews: TNewsContainer;
    FNetHttpRequest: TNetHTTPRequest;
    FServerUrl: string;
    procedure SetImageList(const Value: TImageList);
    procedure SetListView(const Value: TListView);
    procedure SetSelectedItem(const Value: integer);
    procedure SetSelectedUrl(const Value: string);
    procedure SetOnSelectedItem(const Value: TNotifyEvent);
    procedure SetTestJson(const Value: TStrings);
    procedure SetNews(const Value: TNewsContainer);
    procedure SetNetHttpRequest(const Value: TNetHTTPRequest);
    procedure SetServerUrl(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadFromFile(aFileName: string);
    procedure GenerateList;
    procedure ListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
  public
    property SelectedUrl: string read FSelectedUrl write SetSelectedUrl;
    property SelectedItem: integer read FSelectedItem write SetSelectedItem;
    property ImageList: TImageList read FImageList write SetImageList;
    property News: TNewsContainer read FNews write SetNews;
  published
    property OnSelectedItem: TNotifyEvent read FOnSelectedItem write SetOnSelectedItem;
  published
    property ListView: TListView read FListView write SetListView;
    property TestJson: TStrings read FTestJson write SetTestJson;
    property NetHttpRequest: TNetHTTPRequest read FNetHttpRequest write SetNetHttpRequest;
    property ServerUrl: string read FServerUrl write SetServerUrl;
  end;

type
  TJanuaFMXListEvents = class(TJanuaCoreComponent)
  private
    FDataset: TJanuaJsonDacDataset;
    FListView: TListView;
    FImageList: TImageList;
    FSelectedItem: integer;
    FSelectedUrl: string;
    FOnSelectedItem: TNotifyEvent;
    FList: TList<string>;
    FTestJson: TStrings;
    procedure SetImageList(const Value: TImageList);
    procedure SetListView(const Value: TListView);
    procedure SetSelectedItem(const Value: integer);
    procedure SetSelectedUrl(const Value: string);
    procedure SetOnSelectedItem(const Value: TNotifyEvent);
    procedure SetTestJson(const Value: TStrings);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure GenerateList(aText: string);
    procedure ListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
  public
    property SelectedUrl: string read FSelectedUrl write SetSelectedUrl;
    property SelectedItem: integer read FSelectedItem write SetSelectedItem;
    property ImageList: TImageList read FImageList write SetImageList;
  published
    property OnSelectedItem: TNotifyEvent read FOnSelectedItem write SetOnSelectedItem;
  published
    property ListView: TListView read FListView write SetListView;
    property TestJson: TStrings read FTestJson write SetTestJson;
  end;

implementation

uses Janua.FMX.Functions, System.Net.HttpClient, System.Net.URLClient,
  System.Threading, System.Diagnostics,
  System.SyncObjs, Janua.Core.Functions, Janua.FMX.Cloud;

{ TJanuaFMXListNews }

constructor TJanuaFMXListNews.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FNews := TNewsContainer.Create;
  FImageList := TImageList.Create(self);
  // FDataset := TJanuaJsonDacDataset.Create(self);
  // FDataset.IsVirtualTable := True;
  FList := TList<string>.Create;
  FTestJson := TStringList.Create;
end;

destructor TJanuaFMXListNews.Destroy;
begin
  self.FList.Free;
  FTestJson.Free;
  FNews.Free;
  FList.Free;
  inherited;
end;

procedure TJanuaFMXListNews.GenerateList;
var
  i: integer;
  aNews: TJanuaNewsRecord;
  s: string;
  aStream: TMemoryStream;
  aStrings: TStrings;
  // Area in Testing
  // ******************************************
  // aThread: TJanuaFMXListThread;
  // a: TArray<string>;
  a: TArray<TBitmap>;
  SW: TStopwatch;
  j: Int64;
  // ******************************************
begin
  Assert(Assigned(FListView), 'TJanuaFMXListNews.GenerateList ListView not Set');
  Assert(Assigned(FList), 'TJanuaFMXListNews.GenerateList FList not Set');
  // Assert(Assigned(FImageList), 'TJanuaFMXListNews.GenerateList ImageList not Set');
  Assert(Assigned(FNews), 'TJanuaFMXListNews.GenerateList ImageList not Set');

  Assert(Assigned(NetHttpRequest), 'TJanuaFMXListNews.GenerateList NetHttpRequest not set');
  aStream := TMemoryStream.Create;
  try
    NetHttpRequest.Get(self.FServerUrl + '/news.json', aStream);
    aStream.Position := 0;
    aStrings := TStringList.Create;
    try
      aStrings.LoadFromStream(aStream);
      s := aStrings.Text;
    finally
      aStrings.Free;
    end;
  finally
    aStream.Free;
  end;

  FList.Clear;
  FNews.News.LoadFromJson(s);

  // SetLength(a, self.FNews.News.count);

  // if not FDataset.MemDataset.Active then
  // FDataset.MemDataset.Open;

  // ad ogni caricamento elimino e rifaccio la lista delle immagini da 0
  FListView.Images := nil;
  if Assigned(FImageList) then
    FreeAndNil(self.FImageList);
  FImageList := TImageList.Create(self);
  FListView.Items.Clear;

  // Inizio procedura in Testing ................................................
  // *****************************************************************************
  SetLength(a, self.FNews.News.count);
  SW := TStopwatch.Create;
  SW.Start;
  // ------------------------------------------------------------------------------
  // ****************** parallel procedure **************************************
  TParallel.For(0, FNews.News.count - 1,
    procedure(i: Int64)
    begin
      // a[i] := LoadImageFromStream(self.FServerUrl, FNews.News.Items[i].id);
      // for i := Low(a) to High(a) do
      a[i] := LoadBitmapFromURL(self.FServerUrl, FNews.News.Items[i].id.ToString + '.bmp');
    end);
  // Serial Procedure
  {
    for i := Low(a) to High(a) do
    a[i] := LoadBitmapFromURL(self.FServerUrl, FNews.News.Items[i].id.ToString + '.bmp');
  }
  // ------------------------------------------------------------------------------
  SW.Stop;
  j := SW.ElapsedMilliseconds;
  // *****************************************************************************
  SW.Reset;
  SW.Start;
  self.FImageList.BeginUpdate;
  if self.FImageList.count = 0 then
    for i := 0 to FNews.News.count - 1 do
    begin
      AddImageToImageList(self.ImageList, a[i], i.ToString);
      a[i].Free;
      a[i] := nil;
    end;
  self.FImageList.EndUpdate;
  SW.Stop;
  j := SW.ElapsedMilliseconds;

  FListView.Images := FImageList;

  if self.FListView.Items.count = 0 then
  begin
    i := 0;
    // FDataset.MemDataset.First;
    // while not FDataset.MemDataset.Eof do
    FListView.BeginUpdate;
    for aNews in FNews.News.Items do
    begin
      // AddImageToImageList(self.ImageList, LoadImageFromStream(aNews.id), i.ToString); // self.FDataset,
      // FDataset.MemDataset.Next;
      with FListView.Items.Add do
      begin
        Tag := i;
        Data['Text1'] := aNews.title;
        Data['Detail1'] := aNews.content;
        Data['Portrait'] := i;
        FList.Add(aNews.webpage);
      end;
      Inc(i)
    end;
    FListView.EndUpdate;
  end;

  // FDataset.MemDataset.First;
  (*
    FListView.Items.Clear;
    i := 0;
    for aNews in FNews.Items do
    begin
    with FListView.Items.Add do
    begin
    Tag := i;
    Data['Text1'] := aNews.title;
    Data['Detail1'] := aNews.content;
    Data['Portrait'] := i;
    FList.Add(aNews.webpage);
    end;
    Inc(i);
    end;
  *)
end;

procedure TJanuaFMXListNews.ListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  i: integer;
begin
  i := AItem.Tag;
  if (i < FList.count) and (i > -1) then
  begin
    self.FSelectedUrl := FList[i];
    self.FSelectedItem := i;
    if Assigned(self.FOnSelectedItem) then
      FOnSelectedItem(self);
  end;
end;

procedure TJanuaFMXListNews.LoadFromFile(aFileName: string);
begin
  FTestJson.Clear;
  self.FTestJson.LoadFromFile(aFileName);
end;

procedure TJanuaFMXListNews.SetImageList(const Value: TImageList);
begin
  FImageList := Value;
end;

procedure TJanuaFMXListNews.SetListView(const Value: TListView);
begin
  FListView := Value;
  if Assigned(self.FListView) then
  begin
    FListView.Images := self.FImageList;
    FListView.OnItemClick := self.ListViewItemClick;
  end;
end;

procedure TJanuaFMXListNews.SetNetHttpRequest(const Value: TNetHTTPRequest);
begin
  FNetHttpRequest := Value;
end;

procedure TJanuaFMXListNews.SetNews(const Value: TNewsContainer);
begin
  if Assigned(Value) then
    FNews.News := Value.News;
end;

procedure TJanuaFMXListNews.SetOnSelectedItem(const Value: TNotifyEvent);
begin
  FOnSelectedItem := Value;
end;

procedure TJanuaFMXListNews.SetSelectedItem(const Value: integer);
begin
  FSelectedItem := Value;
end;

procedure TJanuaFMXListNews.SetSelectedUrl(const Value: string);
begin
  FSelectedUrl := Value;
end;

procedure TJanuaFMXListNews.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
end;

procedure TJanuaFMXListNews.SetTestJson(const Value: TStrings);
begin
  FTestJson := Value;
end;

{ TJanuaFMXListEvents }

constructor TJanuaFMXListEvents.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FImageList := TImageList.Create(self);
  FDataset := TJanuaJsonDacDataset.Create(self);
  FDataset.IsVirtualTable := true;
  FList := TList<string>.Create;
  FTestJson := TStringList.Create;
end;

destructor TJanuaFMXListEvents.Destroy;
begin
  FList.Free;
  FTestJson.Free;
  inherited;
end;

procedure TJanuaFMXListEvents.GenerateList(aText: string);
var
  i: integer;
begin
  FDataset.LoadFromJson(aText);
  FList.Clear;

  if not FDataset.MemDataset.Active then
    FDataset.MemDataset.Open;

  if ImageList.count = 0 then
  begin
    i := 0;
    FDataset.MemDataset.First;
    while not FDataset.MemDataset.Eof do
    begin
      AddImageToImageList(self.ImageList, 'image', i.ToString);
      // self.FDataset,
      FDataset.MemDataset.Next;
      Inc(i)
    end;
  end;

  FDataset.MemDataset.First;
  i := 0;
  while not FDataset.MemDataset.Eof do
  begin
    with FListView.Items.Add do
    begin
      Tag := i;
      Data['Text1'] := FDataset.MemDataset.FieldByName('title').AsWideString;
      Data['Detail1'] := FDataset.MemDataset.FieldByName('content').AsWideString;
      Data['Portrait'] := i;
      FList.Add(FDataset.MemDataset.FieldByName('website').AsWideString);
    end;
    FDataset.MemDataset.Next;
    Inc(i);
  end;

end;

procedure TJanuaFMXListEvents.ListViewItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  i: integer;
begin
  i := AItem.Tag;
  if (i < FList.count) and (i > -1) then
  begin
    self.FSelectedUrl := FList[i];
    if Assigned(self.FOnSelectedItem) then
      FOnSelectedItem(self);
  end;

end;

procedure TJanuaFMXListEvents.SetImageList(const Value: TImageList);
begin
  self.FImageList := Value;
  if Assigned(self.FListView) then
  begin
    FListView.Images := self.FImageList;
    FListView.OnItemClick := self.ListViewItemClick;
  end;
end;

procedure TJanuaFMXListEvents.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXListEvents.SetOnSelectedItem(const Value: TNotifyEvent);
begin
  FOnSelectedItem := Value;
end;

procedure TJanuaFMXListEvents.SetSelectedItem(const Value: integer);
begin
  self.FSelectedItem := Value;
end;

procedure TJanuaFMXListEvents.SetSelectedUrl(const Value: string);
begin
  self.FSelectedUrl := Value;
end;

procedure TJanuaFMXListEvents.SetTestJson(const Value: TStrings);
begin
  FTestJson := Value;
end;

{ TJanuaFMXListThread }

procedure TJanuaFMXListThread.Execute;
var
  LResponse: IHTTPResponse;
  FHTTPClient: THTTPClient;
  aNews: TJanuaNewsRecord;
  lNews: TJanuaNews;
  s: string;
  // aStream: TMemoryStream;
  aStrings: TStrings;
begin
  inherited;
  // FHTTPClient is an instance of THTTPClient created in the FormCreate event.
  // Here we are sending a GET request passing the URL, and one ACCEPT header
  FHTTPClient := THTTPClient.Create;
  try
    LResponse := FHTTPClient.Get(URL + '/news.json', nil, []);
    s := LResponse.ContentAsString;
    FList.Clear;
    lNews.Clear;
    lNews.LoadFromJson(s);
    // if not FDataset.MemDataset.Active then
    // FDataset.MemDataset.Open;
    // ad ogni caricamento elimino e rifaccio la lista delle immagini da 0
    // FListView.Images := nil;
    // if Assigned(FImageList) then
    // FreeAndNil(self.FImageList);
    // self.FImageList := TImageList.Create(nil);

    FListView.Items.Clear;
    if self.FImageList.count = 0 then
    begin
      // i := 0;
      // FDataset.MemDataset.First;
      // while not FDataset.MemDataset.Eof do
      for aNews in lNews.Items do
      begin
        LResponse := FHTTPClient.Get(FServerUrl + '/' + aNews.id.ToString + '.txt', nil, []);
        aStrings := TStringList.Create;
        try
          aStrings.LoadFromStream(LResponse.ContentStream);
          s := aStrings.Text;
        finally
          aStrings.Free;
        end;
        // s := LResponse.ContentAsString;
        FList.Add(s);
        // FDataset.MemDataset.Next;
        // Inc(i)
      end;
    end;
  finally
    FHTTPClient.Free;
  end;
  // Al termine del Thread effettuo una sincronizzazione dei dati ottenuti dal server web ...
  Synchronize(
    procedure
    var
      i: integer;
      aNews: TJanuaNewsRecord;
    begin
      for i := 0 to self.FList.count - 1 do
        AddImageToImageList(FImageList, FList[i], i.ToString); // self.FDataset,
      FListView.BeginUpdate;
      for aNews in lNews.Items do
        with FListView.Items.Add do
        begin
          Tag := i;
          Data['Text1'] := aNews.title;
          Data['Detail1'] := aNews.content;
          Data['Portrait'] := i;
          FList.Add(aNews.webpage);
          Inc(i);
        end;
      FListView.EndUpdate;
      FListView.Images := FImageList;
      self.FNews.News := lNews;
    end)
end;

procedure TJanuaFMXListThread.SetImageList(const Value: TImageList);
begin
  FImageList := Value;
end;

procedure TJanuaFMXListThread.SetList(const Value: TList<string>);
begin
  FList := Value;
end;

procedure TJanuaFMXListThread.SetListView(const Value: TListView);
begin
  FListView := Value;
end;

procedure TJanuaFMXListThread.SetNews(const Value: TNewsContainer);
begin
  FNews := Value;
end;

procedure TJanuaFMXListThread.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
end;

procedure TJanuaFMXListThread.SetURL(const Value: string);
begin
  FURL := Value;
end;

{ TNewsContainer }

procedure TNewsContainer.SetNews(const Value: TJanuaNews);
begin
  FNews := Value;
end;

end.
