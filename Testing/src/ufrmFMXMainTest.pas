unit ufrmFMXMainTest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.TMSBaseControl, FMX.TMSMemo,
  FMX.TMSMemoStyles, System.ImageList, FMX.ImgList, FMX.Objects, FMX.TMSWebBrowser, FMX.TMSCustomEdit,
  FMX.TMSEdit, Data.Bind.EngExt, FMX.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.Components, Janua.Core.Classes, Janua.FMX.ListViewMenu,
  System.Generics.Collections,
  // Januaproject
  Janua.Test.Football, Janua.Cloud.Files.Intf,
  Janua.Core.Types, Janua.Core.Functions, Janua.Html.Types, Janua.Html.Intf, udmAppConf,
  Janua.Html.Metro5.Impl, Janua.Html.Impl, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Types, FMX.Menus,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Edit,
  Janua.Html.Bootstrap4, Janua.Html.Metro5.Types, Janua.Html.Bootstrap4.Intf,
  Janua.Html.Metro5.Intf, Janua.Cloud.Images.Intf, FMX.WebBrowser, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmFmxDesktopMain = class(TForm)
    tabHtmlGeneration: TTabControl;
    TabItem1: TTabItem;
    TabControl1: TTabControl;
    ListView1: TListView;
    TabItem2: TTabItem;
    TabBrowser1: TTabItem;
    TMSFMXMemoCSSStyler1: TTMSFMXMemoCSSStyler;
    TMSFMXMemoHTMLStyler1: TTMSFMXMemoHTMLStyler;
    TMSFMXMemoXMLStyler1: TTMSFMXMemoXMLStyler;
    TMSFMXMemoWebStyler1: TTMSFMXMemoWebStyler;
    TMSFMXMemo1: TTMSFMXMemo;
    TMSFMXWebBrowser1: TTMSFMXWebBrowser;
    TMSFMXEdit1: TTMSFMXEdit;
    BindingsList1: TBindingsList;
    LinkControlToPropertyURL: TLinkControlToProperty;
    TMSFMXMemoJavaScriptStyler1: TTMSFMXMemoJavaScriptStyler;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    TMSFMXMemoPascalStyler1: TTMSFMXMemoPascalStyler;
    TabItem3: TTabItem;
    memSourceIntf: TTMSFMXMemo;
    MemSourceImpl: TTMSFMXMemo;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    edDatasetName: TEdit;
    TabItem4: TTabItem;
    memJson: TTMSFMXMemo;
    TabItem5: TTabItem;
    memLogs: TTMSFMXMemo;
    TabItemImages: TTabItem;
    ImageList1: TImageList;
    Image1: TImage;
    ListViewImages: TListView;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    lbFileName: TLabel;
    Button6: TButton;
    TabItem6: TTabItem;
    ListViewPDF: TListView;
    Panel2: TPanel;
    WebBrowser1: TWebBrowser;
    DataSource1: TDataSource;
    PgQuery1: TUniQuery;
    PgQuery2: TUniQuery;
    Label1: TLabel;
    edSchemaName: TEdit;
    memJsonCfr: TTMSFMXMemo;
    memLogCfr: TTMSFMXMemo;
    procedure FormCreate(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure MenuItem1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListViewImagesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    FListElements: TList<TJanuaFMXListElement>;
    FElements: TObjectList<TJanuaFMXListElement>;
    DilettantissimoConf: udmAppConf.TdmAppConf;
    FIMageList: Janua.Cloud.Images.Intf.IJanuaImageMemoryStorage;
    FSelectedImage: Janua.Cloud.Images.Intf.IJanuaImageRecord;
    FImageStorage: IJanuaImageStorage;
    FCloudStorage: IJanuaCloudFileStorage;
    procedure UpdateBrowser(aText: string; Append: boolean = False);
    procedure UpdateJson(aText: string; Append: boolean = False);
    procedure UpdatePascal(aText: string; Append: boolean = False);
    // Functions To Build The Web Page (FIGC NEWS) .......................................
    // Main Menu ..............................
    function GetFootballMenu: IJanuaHtmlObject;
    // Function Get Articles List (based on an UNIQUE ID.
    function GetArgumentsList(aArgumentID: integer): IJanuaHtmlObject;
    // Function to Get a Carousel Directly from the Database?
    function GetCarousel(aArgumentID: integer): IJanuaHtmlObject;
    // Function Get Articles List ...................................
    function GetArticlesList(aArgumentID: integer): IMetro5Portlet;
    // This funciton Adds the Selected Image to The List ............
    procedure AddImageToList;
    // This updates ImageList and List and ads ALL IMAGES ...........
    procedure AddAllImagesToList;
  public
    { Public declarations }
    procedure SimplePage(Sender: TObject);
    procedure SimpleTag(Sender: TObject);
    procedure SimpleMeta(Sender: TObject);
    procedure SimpleJavascript(Sender: TObject);
    procedure SimpleHead(Sender: TObject);
    procedure SimpleLink(Sender: TObject);
    procedure PageLoader(Sender: TObject);
    procedure FullWebPage(Sender: TObject);
    procedure Metro5MenuItem(Sender: TObject);
    procedure TestBaseComponents(Sender: TObject);
    procedure Metro510(Sender: TObject);
    procedure Metro508(Sender: TObject);
    procedure Carousel(Sender: TObject);
    procedure OrmCreation(Sender: TObject);
    procedure HeaderTop(Sender: TObject);
    procedure RankingTable(Sender: TObject);
    procedure Menu(Sender: TObject);
    procedure Matches(Sender: TObject);
    procedure LiveScore(Sender: TObject);
    procedure GolRanking(Sender: TObject);
    procedure InterfaceGenerator(Sender: TObject); // Tests Orm Interface Generator................
    procedure InterfaceChampionshipTest(Sender: TObject);
    procedure OrmMenu(Sender: TObject);
    procedure OrmDataset(Sender: TObject);
    procedure FuncResult(Sender: TObject);
    // Tests Orm Implementation Generator................
  end;

var
  frmFmxDesktopMain: TfrmFmxDesktopMain;
  FServerConf: TJanuaServerRecordConf;

implementation

uses JOrm.Football.Championship.Intf, JOrm.Football.Championship.Impl, uTestHtml, uTestMetro5,
  Janua.Football.Types, Janua.Mime.Types, Janua.Cloud.Images.Impl, System.Json, Spring, Janua.Core.Json,
  Janua.Core.Metronics, udmVirtualFootballServer, Janua.Orm.Generator, Janua.FMX.Functions,
  udmVirtualCmsServer, JOrm.Cms.MainArguments.Impl, Janua.Html.Builder.Intf, Janua.Metro5.Builder,
  JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf, udmPgSystemCommand, Janua.Postgres.Cloud,
  Janua.Html.Metro5.Pages, VirtualTable, Janua.Orm.Dataset.Intf, XSuperJSON, XSuperObject,
  Janua.Orm.Dataset.Impl, Janua.Server.Intf, Janua.Server.Impl;

// Application.CreateForm(TdmVirtualCmsServer, dmVirtualCmsServer);

{$R *.fmx}

procedure TfrmFmxDesktopMain.AddAllImagesToList;
var
  i: integer;
begin
  self.ListViewImages.Items.Clear;
  self.ListViewImages.BeginUpdate;
  self.ImageList1.BeginUpdate;
  // L'array degli elementi di una List è denominato Destination è una Colleciton di Items. TDestinationCollection
  ImageList1.Destination.Clear;
  if self.FIMageList.Count > 0 then
  begin
    for i := 0 to Pred(self.FIMageList.Count) do
    begin
      self.FIMageList.GetFileByIndex(i);
      // adds selected Image to The List
      self.AddImageToList;
    end;
    self.ImageList1.EndUpdate;
    self.ListViewImages.EndUpdate;
  end;
end;

procedure TfrmFmxDesktopMain.AddImageToList;
begin
  AddBlobToImageList(ImageList1, FIMageList.SelectedItem.Blob, FIMageList.ItemIndex.ToString);
  ListViewImages.BeginUpdate;
  with ListViewImages.Items.Add do
  begin
    Tag := FIMageList.ItemIndex;
    begin
      Text := FIMageList.SelectedItem.FileName;
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      // ImageIndex := Ord(self.FIconType);
      ImageIndex := ImageList1.Count - 1;
    end;
  end;
  ListViewImages.EndUpdate;
end;

procedure TfrmFmxDesktopMain.Button1Click(Sender: TObject);
var
  DM: TDataModule;
  aDataset: TDataset;
  aIntf, aImpl: string;
  i, j: integer;
begin
  {
    function GenerateRecordSet(out aIntf, aImpl: string; aDataset: TDataset; const aName: string;
    const aPlural: string = ''): string;
  }
  aDataset := nil;
  if edDatasetName.Text <> '' then
  begin
    for i := 0 to Application.ComponentCount - 1 do
      if Application.Components[i].Name = ComboBox1.Items[ComboBox1.ItemIndex] then
      begin
        DM := (Application.Components[i] as TDataModule);
        for j := 0 to DM.ComponentCount - 1 do
          if DM.Components[j].Name = ComboBox2.Items[ComboBox2.ItemIndex] then
            aDataset := (DM.Components[j] as TDataset)
      end;
    {
      self.Caption := ComboBox1.Items[ComboBox1.ItemIndex] + ' - ' + ComboBox2.Items[ComboBox2.ItemIndex];
      if Assigned(aDataset) then
      Janua.Orm.Generator.GenerateRecordSet(aIntf, aImpl, aDataset, edDatasetName.Text, edSchemaName.Text);
    }
    self.memSourceIntf.Lines.Text := aIntf;
    self.MemSourceImpl.Lines.Text := aImpl;
  end;
end;

procedure TfrmFmxDesktopMain.Button2Click(Sender: TObject);
var
  aImg: IJanuaImageRecord;
  aStream: TMemoryStream;
begin
  if self.OpenDialog1.Execute then
  begin
    self.Image1.Bitmap.LoadFromFile(self.OpenDialog1.FileName);
    aImg := TJanuaImageRecord.Create;
    aImg.FileName := OpenDialog1.FileName;
    aImg.SchemaID := 0;
    aStream := TMemoryStream.Create;
    try
      self.Image1.Bitmap.SaveToStream(aStream);
      aImg.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
    self.FIMageList.AddFile(aImg, False);
  end;
  self.AddImageToList;
  {
    for i := 0 to self.FList.count - 1 do
    // self.FDataset,
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
  }
end;

procedure TfrmFmxDesktopMain.Button4Click(Sender: TObject);
begin
  FIMageList.SaveFileToStorage
end;

procedure TfrmFmxDesktopMain.Button6Click(Sender: TObject);
begin
  self.FIMageList.LoadFilesList(100);
  self.AddAllImagesToList;
end;

procedure TfrmFmxDesktopMain.Carousel(Sender: TObject);
var
  aCarousel: TBootstrap4Carousel;
  p: TMetro510Page;
begin
  p := TMetro510Page.Create(Janua.Html.Impl.THtmlHelper.Create);
  aCarousel := TBootstrap4Carousel.Create(Janua.Html.Impl.THtmlHelper.Create);
  // (Url, Title, Description, Target: string
  // style="width:100%;">
  aCarousel.AddSlide('la.jpg', 'Los Angeles', 'LA is always so much fun!', '#target0');
  aCarousel.AddSlide('chicago.jpg', 'Chicago', 'We love the Big Apple!', '#target1');
  aCarousel.AddSlide('ny.jpg', 'New York', 'We love the Big Apple!', '#target2');
  (p.Body as IMetro5Body).Content.Body.Add(aCarousel);

  UpdateBrowser(p.AsHtml);

  p.Free;
end;

procedure TfrmFmxDesktopMain.FormCreate(Sender: TObject);
  procedure EnableElement(aText: string; ItemMenuClick: TNotifyEvent);
  begin
    FElements[FElements.Count - 1].Text := aText;
    FElements[FElements.Count - 1].Enabled := True;
    FElements[FElements.Count - 1].OnClick := ItemMenuClick;
  end;

var
  i, j: integer;

begin

  FCloudStorage := TJanuaPgCloudStorage.Create;
  FCloudStorage.KeepAlive := True;

  Janua.Html.Types.AssetsUrl := 'http://cdn.ergomercator.com/metronic_v5.2/default/dist/';
  FImageStorage := TJanuaImageStorage.Create(FCloudStorage);
  FIMageList := Janua.Cloud.Images.Impl.TJanuaImageMemoryStorage.Create(self.FImageStorage);
  FSelectedImage := Janua.Cloud.Images.Impl.TJanuaImageRecord.Create;

  FElements := TObjectList<TJanuaFMXListElement>.Create;
  self.FListElements := TList<TJanuaFMXListElement>.Create;
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Simple Page', self.SimplePage);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Simple Tag', self.SimpleTag);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Simple JScript', self.SimpleJavascript);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Simple Head', self.SimpleHead);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Link Url', self.SimpleLink);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Full Page', self.FullWebPage);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('M5 Loader', self.PageLoader);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('M510 Page', self.Metro510);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('M508 Page', self.Metro508);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('M5 Components', self.TestBaseComponents);

  // HeaderTop
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('M55 Header', self.HeaderTop);

  // Metro5MenuItem

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Metro 5 Menu Item', self.Metro5MenuItem);

  // OrmCreation

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Orm base creation', self.OrmCreation);

  // RankingTable

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Ranking Table', self.RankingTable);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Matches', self.Matches);

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Live', self.LiveScore);

  // GolRanking
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('GolRanking', self.GolRanking);

  // InterfaceGenerator
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('InterfaceGenerator', self.InterfaceGenerator);

  // ImplementationGenerator
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Championship Intf', self.InterfaceChampionshipTest);

  // Carousel
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Carousel', self.Carousel);

  // TfrmFmxDesktopMain.TestOrmMenu(Sender
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Orm Menu', self.OrmMenu);

  // OrmDataset Test Orm Dataset

  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Orm Dataset', self.OrmDataset);

  // FuncResult
  FElements.Add(TJanuaFMXListElement.Create(FListElements, TJanuaIconType.notselected, nil));
  EnableElement('Func Result', self.FuncResult);

  self.ListView1.Items.Clear;
  if self.FListElements.Count > 0 then
    for i := 0 to self.FListElements.Count - 1 do
      FListElements[i].DrawListView(ListView1, i);

  Application.CreateForm(TdmVirtualCmsServer, dmVirtualCmsServer);

  for i := 0 to Application.ComponentCount - 1 do
    if (Application.Components[i] is TDataModule) then
    begin
      self.ComboBox1.Items.Add(Application.Components[i].Name);
      if self.ComboBox1.Items.Count = 1 then
      begin
        for j := 0 to Application.Components[i].ComponentCount - 1 do
          if (Application.Components[i].Components[j] is TDataset) then
            self.ComboBox2.Items.Add(Application.Components[i].Components[j].Name);
      end;
    end;

  if self.ComboBox1.Items.Count > 0 then
    self.ComboBox1.ItemIndex := 0;
  if self.ComboBox2.Items.Count > 0 then
    self.ComboBox2.ItemIndex := 0;
end;

procedure TfrmFmxDesktopMain.FullWebPage(Sender: TObject);
begin
  UpdateBrowser(uTestHtml.FullWebPage);
end;

procedure TfrmFmxDesktopMain.FuncResult(Sender: TObject);
var
  LResultO, LResultD: IJanuaFuncResult;
  LJsonO, LJsonD: System.Json.TJsonObject;
  // RecordSet e Record che possono comporre una risposta
  aRecord, bRecord, cRecord: IJanuaRecord;
  aRecordSet, bRecordSet, cRecordSet: IJanuaRecordSet;
  i, j, k: integer;
  t1, t2: integer; // variabili di Test ....
  tmp: IJanuaField; // Queto 'field' Server per creare i parametri da inserire
  LJsonSOO, LJsonSOD: ISuperObject;
begin
  LResultO := TJanuaFuncResult.Create;
  Guard.CheckNotNull(LResultO, 'LResultO nil');
  LResultO.ErrorMessage := 'Test Error Message';
  LResultO.HasErrors := True;
  Guard.CheckTrue(LResultO.ErrorMessage = 'Test Error Message');
  Guard.CheckTrue(LResultO.HasErrors, 'LResultO Has Errors differs');
  LJsonO := LResultO.AsJsonObject;
  Guard.CheckNotNull(LJsonO, 'LResultO nil');
  LResultD := TJanuaFuncResult.Create;
  LResultD.AsJsonObject := LJsonO;
  Guard.CheckTrue(LResultO.ErrorMessage = LResultD.ErrorMessage, 'LResultD Has Errors differs');
  Guard.CheckTrue(LResultD.HasErrors, 'LResultD Has Errors differs');
  LResultO := nil;
  LResultD := nil;
  FreeAndNil(LJsonO);
  FreeAndNil(LJsonD);

  LResultO := TJanuaFuncResult.Create;
  Guard.CheckNotNull(LResultO, 'LResultO nil');

  // Playground

  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  aRecord.FieldByName('int').Value := 100;
  aRecord.FieldByName('ext').Value := 1234.12345;
  aRecord.FieldByName('str').Value := 'ciao';
  aRecord.FieldByName('dat').Value := Now();

  // primo Test confronto aRecord e bRecord

  bRecord := TJanuaRecord.Create;
  bRecord.AsMetadata := aRecord.AsMetadata;
  bRecord.AsJsonObject := aRecord.AsJsonObject;
   memJson.Lines.Add(Janua.Core.Json.JsonPretty(aRecord.AsMetadata.ToJSON));
  memJson.Lines.Add(Janua.Core.Json.JsonPretty(aRecord.AsJsonObject.ToJSON));
  memJson.Lines.Add('// -------------------------------------------------------------');
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecord.AsMetadata.ToJSON));
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecord.AsJsonObject.ToJSON));
  memJsonCfr.Lines.Add('// -------------------------------------------------------------');

  if bRecord.Equals(aRecord) then
    self.memLogs.Lines.Add('bRecord Equals (aRecord)')
  else
    self.memLogs.Lines.Add('bRecord Not Equals (aRecord)');

  bRecord := nil;

  // cRecord è la matrice di cRecordset
  cRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('sub');
  i := cRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));

  // Creo C Recorset
  cRecordSet := TJanuaOrmFactory.CreateRecordset('subset', cRecord);

  bRecordSet := TJanuaRecordSet.Create;
  bRecordSet.AsMetadata := cRecordSet.AsMetadata;
  bRecordSet.AsJsonObject := cRecordSet.AsJsonObject;
   memJson.Lines.Add(Janua.Core.Json.JsonPretty(cRecordSet.AsMetadata.ToJSON));
  memJson.Lines.Add(Janua.Core.Json.JsonPretty(cRecordSet.AsJsonObject.ToJSON));
  memJson.Lines.Add('// -------------------------------------------------------------');
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecordSet.AsMetadata.ToJSON));
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecordSet.AsJsonObject.ToJSON));
  memJsonCfr.Lines.Add('// -------------------------------------------------------------');

  if bRecordSet.Equals(cRecordSet) then
    self.memLogs.Lines.Add('bRecordSet Equals (cRecordSet)')
  else
    self.memLogs.Lines.Add('bRecordSet Not Equals (cRecordSet)');

  bRecordSet := nil;


  // Lo aggiungo a aRecord che ha quindi 1 recordset di indice 0
  k := aRecord.AddRecordSet(cRecordSet);
  t1 := aRecord.RecordSetIndex;
  Guard.CheckTrue(k = t1, 'TfrmFmxDesktopMain.OrmCreation k <> RecordSetIndex, t1=' + t1.ToString);
  t2 := Pred(aRecord.RecordSetCount);
  Guard.CheckTrue(k = t2, 'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount) t2=' + t2.ToString);





  bRecord := TJanuaRecord.Create;
  bRecord.AsMetadata := aRecord.AsMetadata;
  bRecord.AsJsonObject := aRecord.AsJsonObject;
   memJson.Lines.Add(Janua.Core.Json.JsonPretty(aRecord.AsMetadata.ToJSON));
  memJson.Lines.Add(Janua.Core.Json.JsonPretty(aRecord.AsJsonObject.ToJSON));
  memJson.Lines.Add('// -------------------------------------------------------------');
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecord.AsMetadata.ToJSON));
  memJsonCfr.Lines.Add(Janua.Core.Json.JsonPretty(bRecord.AsJsonObject.ToJSON));
  memJsonCfr.Lines.Add('// -------------------------------------------------------------');

  if bRecord.Equals(aRecord) then
    self.memLogs.Lines.Add('bRecord Equals (aRecord)')
  else
    self.memLogs.Lines.Add('bRecord Not Equals (aRecord)');

  bRecord := nil;


  aRecordSet := TJanuaOrmFactory.CreateRecordset('set', aRecord);
  aRecordSet.Append;
  aRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  t1 := aRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Guard.CheckTrue(t1 = 2, 'aRecordSet.CurrentRecord.RecordSets[k] <> 2; t1 = ' + t1.ToString);
  aRecordSet.Post;

  LResultO.RecResult.AddRecordSet(aRecordSet);
  LResultO.RecResult.Records.Add(aRecord);

  // Test Export-Import Dei soli Parametri
  Guard.CheckNotNull(LResultO.Params, 'LOrigin is nil');
  tmp := TJanuaOrmFactory.CreateIntegerField('int', 'int', False);
  tmp.AsInteger := 10;
  LResultO.Params.AddParam(tmp);
  tmp := TJanuaOrmFactory.CreateIntegerField('ext', 'ext', False);
  tmp.AsFloat := 11.21;
  LResultO.Params.AddParam(tmp);
  // Controllo che il conto dei parametri sia almeno pari a 2
  Guard.CheckTrue(2 = LResultO.Params.ParamCount, 'LOrigin <> 2');
  // Verifico che l'oggetto di destinazione non sia un nullo
  LJsonO := LResultO.Params.AsJsonObject;

  // Creo la funzione di destinazione LResultD
  LResultD := TJanuaFuncResult.Create;
  LResultD.Params.AsJsonObject := LJsonO;
  // Verifico che orginne  e destinazioe siano identici
  Guard.CheckTrue(LResultO.Params.ParamCount = LResultD.Params.ParamCount, 'LDestination <> LOrigin');
  Guard.CheckTrue(LResultO.Params.Equals(LResultD.Params), 'LDestination not Equals LOrigin');
  LJsonO.Free;
  // Testo Import/Export dei metadati. Per prima cosa esporto i metadati del Record di Origine
  LJsonO := LResultO.RecResult.AsMetadata;
  // Quindi li assegno al record di destinazione che dovrebbe ricostruire la struttura dell'origine
  LResultD.RecResult.AsMetadata := LJsonO;
  // Verifico che Destination RecResult abbia lo stesso numero di RecordSet di
  Guard.CheckTrue(LResultO.RecResult.RecordSetCount(False) = LResultD.RecResult.RecordSetCount(False),
    'Rec Result Metadata Export 1st Level Failed');
  (* Assert.AreEqual(LResultO.RecResult.RecordSetCount(True), LResultD.RecResult.RecordSetCount(True),
    'Rec Result Metadata Export 2nd Level Failed'); *)
  LResultD := nil;
  LJsonO.Free;

  // Test di copia completa da Origin Function a Destination Function
  LJsonO := LResultO.AsJsonObject;
  LJsonSOO := SO(LJsonO.ToJSON);
  self.memJson.Lines.Add(LJsonSOO.AsJSON(True, True));
  LResultD := nil;
  LResultD := TJanuaFuncResult.Create;
  LResultD.AsJsonObject := LJsonO;
  LJsonD := LResultD.AsJsonObject;
  LJsonSOD := SO(LJsonD.ToJSON);
  self.memJsonCfr.Lines.Add(LJsonSOD.AsJSON(True, True));
  Guard.CheckTrue(LResultO.RecResult.RecordSetCount(False) = LResultD.RecResult.RecordSetCount(False),
    'LResultO.RecResult Metadata Export 1st Level Failed');
  Guard.CheckTrue(LResultO.RecResult.Equals(LResultD.RecResult),
    'LResultO.RecResult Metadata Export  LResultD.RecResult not equals LResultO.RecResult');
  Guard.CheckTrue(LResultO.Params.Equals(LResultD.Params), 'LDestination not Equals LOrigin');

end;

function TfrmFmxDesktopMain.GetArgumentsList(aArgumentID: integer): IJanuaHtmlObject;
begin

end;

function TfrmFmxDesktopMain.GetArticlesList(aArgumentID: integer): IMetro5Portlet;
var
  c: IMetro5PortletHead;
  r: IMetro5Article;
begin
  // funzione che crea una 'simpatica' serie di Articoli per il nostro sito web ...............
  c := TMetro5Factory.CreateMetro5PortletHead('I nostri articoli', 'le ultime news', TMetro5IconType.SoccerBall,
    TM5StateColorsStyle.m5sWarning) as IMetro5PortletHead;

  Result := TMetro5Factory.CreatePortlet(c) as IMetro5Portlet;
  r := TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, 'CDM Genova Arrivano le prime anticipazioni',
    'Le conferme della rosa per il prossimo anno.', 'LND Liguria',
    'http//:cdn.ergomercator.com/dilettantissimo/images/image1.jpg', 'http://www.ergomercator.com',
    System.SysUtils.Date) as IMetro5Article;
  r.HasImage := False;
  Result.Content.Add(r);
  Result.Content.Add(r);
  Result.Content.Add(r);
end;

function TfrmFmxDesktopMain.GetCarousel(aArgumentID: integer): IJanuaHtmlObject;
var
  aCarousel: IBootstrap4Carousel;
  aPortlet: IMetro5Portlet;
begin
  aCarousel := TBootstrap4Carousel.Create(Janua.Html.Impl.THtmlHelper.Create);
  aCarousel.AddSlide('la.jpg', 'Los Angeles', 'LA is always so much fun!', '#target0');
  aCarousel.AddSlide('chicago.jpg', 'Chicago', 'We love the Big Apple!', '#target1');
  aCarousel.AddSlide('ny.jpg', 'New York', 'We love the Big Apple!', '#target2');
  aPortlet := TMetro5Portlet.Create(Janua.Html.Impl.THtmlHelper.Create);
  aPortlet.Content.Add(aCarousel);
  aPortlet.Content.Padded := False;
  Result := aPortlet;
end;

function TfrmFmxDesktopMain.GetFootballMenu: IJanuaHtmlObject;
var
  DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  Test: IJanuaRecordSet;
  ma: IMainArguments;
  ar: IArguments;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
begin
  // Test completo menu ORM da Football Academy.........................................................
  DM := udmVirtualCmsServer.TdmVirtualCmsServer.Create(nil);
  try
    DM.vtMainArguments.Open;
    DM.vtMainArguments.First;
    DM.vtArguments.Open;
    DM.vtArguments.First;
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    (Test as IMainArguments).Arguments.Dataset := DM.vtArguments;
    Test.Dataset := DM.vtMainArguments;
    Test.DirectLoadFromDataset(DM.vtMainArguments);
    Assert(Test.RecordCount > 0, 'Test has 0 Records');
    ma := Test as IMainArguments;
    ar := ma.MainArgument.Arguments;
    self.UpdateJson(ma.ToJSON, True);
    // occorre un campo anche 'calcolato' per il sub-url da decifrare.
    // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
    // tanto quanto fondamentale una propr
    // GetMenuBuilder(aRecordset, aSubRecordSet: IJanuaRecordSet;
    // aTitle, aIcon, aUrl, aSubTitle, aSubIcon, aSubUrl, aSelected, aSubSelected: IJanuaField; out a: IHtmlMenuBuilder;
    // out b: IHtmlBuilder);
    TMetro5BuilderFactory.GetMenuBuilder(ma, ma.MainArgument.Arguments, ma.MainArgument.Main_argument_des, ar.Icon,
      ar.Url, ar.Argument_des, ar.Argument.Icon, ar.Argument.Url, nil, nil, m, a);
    m.HasHome := True;
    Result := m.GetElement;
  finally
    DM.Free
  end;
end;

procedure TfrmFmxDesktopMain.GolRanking(Sender: TObject);
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  j: integer;
begin
  // Test Header:
  (* UpdateBrowser (TJanuaRanking.AsTableBigHeaderTop(False).AsHtml); *)

  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    FootballServer.Activate;
    // FootballServer.OpenGoalRanking;
    //
    // Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset);
    // FootballServer.cdsGolRanking.Open;
    // Assert.IsTrue(FootballServer.cdsGolRanking.MemDataset.Active, 'cdsGolRanking not active');
    j := FootballServer.cdsGolRanking.RecordCount;
    FootballServer.OpenGoalRanking;

    UpdateBrowser(FootballServer.goalrankings.AsHtmlMetro5Table(9, False, 30));

  finally
    FootballServer.Free
  end;

end;

procedure TfrmFmxDesktopMain.HeaderTop(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.MetroHeader)
end;

procedure TfrmFmxDesktopMain.InterfaceChampionshipTest(Sender: TObject);
var
  aChampionship: IChampionship;
  aChampionships: IChampionships;
  DM: udmVirtualFootballServer.TdmVirtualFootballServer;
begin
  aChampionship := TChampionshipFactory.CreateRecord('vtChampionships');
  aChampionships := TChampionshipFactory.CreateRecordset('championships', nil, nil);
  DM := udmVirtualFootballServer.TdmVirtualFootballServer.Create(self);
  aChampionships.Championship := aChampionship;
  aChampionships.DirectLoadFromDataset(DM.vtChampionships);
  self.UpdateJson(aChampionships.ToJSON);
end;

procedure TfrmFmxDesktopMain.InterfaceGenerator(Sender: TObject);
var
  DM: TdmVirtualFootballServer;
  aIntf, aImpl: string;
  aFileIntf, aFileImpl: string;
begin
  {
    function GenerateRecordSet(out aIntf, aImpl: string; aDataset: TDataset; const aName: string;
    const aPlural: string = ''): string;
  }

  DM := TdmVirtualFootballServer.Create(nil);
  try
    Janua.Orm.Generator.GenerateRecordSet(aIntf, aImpl, DM.vtChampionships, 'Championship', 'Football', 'cmps',
      aFileIntf, aFileImpl, 'Championship', 'Championship');
    self.memSourceIntf.Lines.Text := aIntf;
    self.MemSourceImpl.Lines.Text := aImpl;
  finally
    DM.Free;
  end;
end;

procedure TfrmFmxDesktopMain.ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if (AItem.Tag > -1) and (AItem.Tag < self.FListElements.Count) then
    self.FListElements[AItem.Tag].DoClick;
end;

procedure TfrmFmxDesktopMain.ListViewImagesItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  aStream: TStream;
begin
  if (AItem.Tag > -1) and (AItem.Tag < self.FIMageList.Count) then
  begin
    aStream := TMemoryStream.Create;
    try
      self.FIMageList.GetFileByIndex(AItem.Tag).Blob.SaveToStream(aStream);
      aStream.Position := 0;
      self.Image1.Bitmap.LoadFromStream(aStream);
      self.lbFileName.Text := FIMageList.GetFileByIndex(AItem.Tag).FileName;
    finally
      aStream.Free
    end;

  end;
end;

procedure TfrmFmxDesktopMain.LiveScore(Sender: TObject);
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  j: integer;
begin
  // Test Header:
  (* UpdateBrowser (TJanuaRanking.AsTableBigHeaderTop(False).AsHtml); *)

  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    FootballServer.Activate;
    // FootballServer.OpenGoalRanking;
    //
    // Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset);
    // FootballServer.cdsGolRanking.Open;
    // Assert.IsTrue(FootballServer.cdsGolRanking.MemDataset.Active, 'cdsGolRanking not active');
    j := FootballServer.cdsMatches.RecordCount;
    FootballServer.OpenMatches;

    UpdateBrowser(FootballServer.Matches.AsLiveScore);

  finally
    FootballServer.Free
  end;

end;

procedure TfrmFmxDesktopMain.Matches(Sender: TObject);
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  j: integer;
begin
  // Test Header:
  (* UpdateBrowser (TJanuaRanking.AsTableBigHeaderTop(False).AsHtml); *)

  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    FootballServer.Activate;
    // FootballServer.OpenGoalRanking;
    //
    // Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset);
    // FootballServer.cdsGolRanking.Open;
    // Assert.IsTrue(FootballServer.cdsGolRanking.MemDataset.Active, 'cdsGolRanking not active');
    j := FootballServer.cdsMatches.RecordCount;
    FootballServer.OpenMatches;

    UpdateBrowser(FootballServer.Matches.AsMetroHtmlTable(9));

  finally
    FootballServer.Free
  end;

end;

procedure TfrmFmxDesktopMain.Menu(Sender: TObject);
begin

end;

procedure TfrmFmxDesktopMain.MenuItem1Click(Sender: TObject);
begin
  // Inizializza la configurazione Dilettanttissimo x Test Server Dilettantissimo ...
  DilettantissimoConf := TdmAppConf.Create(nil);
  DilettantissimoConf.JanuaConf1.AppUrl := 'dilettantissimo.ergomercator.com';
  DilettantissimoConf.JanuaCoreOS1.ResolveToFile := True;
  DilettantissimoConf.JanuaCoreOS1.UseCurrentDir := True;
  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'ergomercator';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'football';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  DilettantissimoConf.JanuaConf1.JanuaServerConf.SetRecordConf(FServerConf);
  DilettantissimoConf.Activate(TJanuaApplicationType.jatClientWin);
end;

procedure TfrmFmxDesktopMain.Metro508(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.Metro508)
end;

procedure TfrmFmxDesktopMain.Metro510(Sender: TObject);
var
  p: IMetro5Page;
  o: IJanuaHtmlObject;
  // Metro 5 Grid Item è il 'Body' della nostra pagina web....................................
  b: IJanuaHtmlObject;
  por: IMetro5Portlet;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
  aFrame: IJanuaHtmlObject;
begin
  p := TMetro5PageFactory.CreateMetro510Page;
  o := self.GetFootballMenu;
  /// *************** start IFrame *****************************
  /// <iframe src="https://goo.gl/BnbW5V" style="border:0px #ffffff none;" name="LNDiframe" scrolling="no"
  /// frameborder="0" marginheight="0px" marginwidth="0px" height="150px" width="100%" allowfullscreen="">
  /// </iframe>
  aFrame := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'iframe', False);
  aFrame.CommentBefore := 'begin::IFrame';
  aFrame.CommentAfter := 'end::IFrame';
  aFrame.AddParam('src', 'https://goo.gl/BnbW5V');
  aFrame.AddStyle(THtmlStyle.Border, 'border:0px #ffffff none;');
  aFrame.AddParam('name', 'LNDiframe');
  aFrame.AddParam('scrolling', 'no');
  aFrame.AddParam('frameborder', '0');
  aFrame.AddParam('marginheight', '0px');
  aFrame.AddParam('marginwidth', '0px');
  aFrame.AddParam('height', '150px');
  aFrame.AddParam('width', '100%');
  aFrame.AddParam('allowfullscreen', '');
  /// *************** end IFrame *****************************
  p.Body.Insert(0, aFrame);
  // p.ContentHeader.AddStyle(THtmlStyle.BackGround, '#214a8d !important' );
  p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.Position, 'static !important'); // margin-top:140px;
  // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginBottom, '30px');    // margin-top:140px;
  // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginTop, '140px');
  p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
  p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.Src := 'http://cdn.ergomercator.com/images/logo_liguria150.png';
  p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.AddStyle(THtmlStyle.MarginTop, '-40px');
  p.ContentHeader.HeaderTop.Brand.AddStyle(THtmlStyle.MarginTop, '-30px');
  // Lascio il Content Body 'vuoto'
  // p.ContentBody.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
  p.Body.AddMenu(o);
  b := (p.Body as IMetro5Body).Content.Body;
  b.AddSimpleTag('div', '', True, ['row']);
  row1 := b.SelectedItem;
  // Colonna 8
  row1.AddSimpleTag('div', '', True, ['col-xl-8']);
  col11 := row1.SelectedItem;
  // Colonna 4
  row1.AddSimpleTag('div', '', True, ['col-xl-4']);
  col12 := row1.SelectedItem;
  // in Col1 inserisco inizialmente uno Slider di 'Test'....................
  col11.Add(GetCarousel(1));
  // ELABORAZIONE DELLA SECONDA RIGA .......................................
  b.AddSimpleTag('div', '', True, ['row']);
  row2 := b.SelectedItem;
  // Colonna 2.1 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col21 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col21.Add(por);
  // Colonna 2.2 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col22 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col22.Add(por);
  // Colonna 2.3 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col23 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col23.Add(por);
  UpdateBrowser(p.AsHtml);
end;

procedure TfrmFmxDesktopMain.Metro5MenuItem(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.MenuItem)
end;

procedure TfrmFmxDesktopMain.OrmCreation(Sender: TObject);
var
  aRecord, bRecord, cRecord: IJanuaRecord;
  aRecordSet, bRecordSet, cRecordSet, dRecordSet: IJanuaRecordSet;
  i, j, k: integer;
  t1, t2: integer; // variabili di Test ....
  tmp: string;
begin
  aRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := aRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := aRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  cRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('sub');
  i := cRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  i := cRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));

  cRecordSet := TJanuaOrmFactory.CreateRecordset('subset', cRecord);
  k := aRecord.AddRecordSet(cRecordSet);
  t1 := aRecord.RecordSetIndex;
  Assert(k = t1, 'TfrmFmxDesktopMain.OrmCreation k <> RecordSetIndex, t1=' + t1.ToString);
  t2 := Pred(aRecord.RecordSetCount);
  Assert(k = t2, 'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount) t2=' + t2.ToString);

  aRecordSet := TJanuaOrmFactory.CreateRecordset('set', aRecord);
  aRecordSet.Append;
  aRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  aRecordSet.CurrentRecord.RecordSets[k].Append;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  aRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  aRecordSet.CurrentRecord.RecordSets[k].Post;
  t1 := aRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Assert(t1 = 2, 'aRecordSet.CurrentRecord.RecordSets[k] <> 2; t1 = ' + t1.ToString);
  aRecordSet.Post;

  for i := 0 to Pred(j) do
    tmp := aRecordSet.CurrentRecord.Fields[i].Key + ': ' + aRecordSet.CurrentRecord.Fields[i].AsString;

  // for i := 0 to aRecordSet.CurrentRecord.FieldCount - 1 do
  // TMSFMXMemo1.Lines.Add(aRecordSet.CurrentRecord.Fields[i].Key + ': ' + aRecordSet.CurrentRecord.Fields[i].AsString);

  bRecord := Janua.Orm.Impl.TJanuaOrmFactory.CreateRecord('test');
  j := 0;
  i := bRecord.AddField(TJanuaOrmFactory.CreateIntegerField('int', 'int'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateExtentedField('ext', 'ext'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateStringField('str', 'str'));
  Inc(j);
  i := bRecord.AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  Inc(j);

  dRecordSet := TJanuaOrmFactory.CreateRecordset('subset', cRecord);
  k := bRecord.AddRecordSet(dRecordSet);
  Assert(k = bRecord.RecordSetIndex, 'TfrmFmxDesktopMain.OrmCreation k <> RecordSetIndex');
  Assert(k = Pred(bRecord.RecordSetCount), 'TfrmFmxDesktopMain.OrmCreation k <> Pred(aRecord.RecordSetCount)');

  bRecordSet := TJanuaOrmFactory.CreateRecordset('test', bRecord);
  bRecordSet.Append;
  bRecordSet.CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecordSet.CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecordSet.CurrentRecord.FieldByName('dat').Value := Now();
  // Primo Record
  bRecordSet.CurrentRecord.RecordSets[k].Append;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  bRecordSet.CurrentRecord.RecordSets[k].Post;
  // Secondo Reocrd
  bRecordSet.CurrentRecord.RecordSets[k].Append;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 54321.54321;
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'notte';
  bRecordSet.CurrentRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now() - 1;
  bRecordSet.CurrentRecord.RecordSets[k].Post;
  bRecordSet.Post;
  Assert(bRecordSet.RecordCount = 1, 'aRecordset non ha conteggio = 1 ma ' + bRecordSet.RecordCount.ToString);
  t2 := bRecordSet.CurrentRecord.RecordSets[k].RecordCount;
  Assert(t2 = 2, 'bRecordSet.CurrentRecord.RecordSets[k] non ha conteggio = 2, ma ' + t2.ToString);
  UpdateJson(bRecordSet.CurrentRecord.AsJsonObject.ToJSON, True);
  UpdateJson(bRecordSet.AsJsonObject.ToJSON, True);

  bRecordSet.Clear;
  Assert(bRecordSet.RecordCount = 0, 'aRecordset non ha conteggio = 0');

  aRecord.Clear;
  t1 := aRecord.RecordSets[k].RecordCount;
  Assert(t1 = 0, 'aRecord.RecordSets[k] non ha conteggio = 0 ma vale: ' + t1.ToString);
  t2 := aRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert(t2 = 0, 'aRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 0, t2=' + t2.ToString);

  // inizializzo bRecord
  bRecord.FieldByName('int').Value := 100;
  bRecord.FieldByName('ext').Value := 1234.12345;
  bRecord.FieldByName('str').Value := 'ciao';
  bRecord.FieldByName('dat').Value := Now();
  // Testo 1 sub Record
  bRecord.RecordSets[k].Append;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 100;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 1234.12345;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'ciao';
  bRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now();
  bRecord.RecordSets[k].Post;
  // Testo 2 Sub Record
  bRecord.RecordSets[k].Append;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('int').Value := 99;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('ext').Value := 54321.54321;
  bRecord.RecordSets[k].CurrentRecord.FieldByName('str').Value := 'notte';
  bRecord.RecordSets[k].CurrentRecord.FieldByName('dat').Value := Now() - 1;
  bRecord.RecordSets[k].Post;
  t1 := bRecord.RecordSets[k].RecordCount;
  Assert(t1 = 2, 'bRecord.RecordSets[k] non ha conteggio = 2 ma vale: ' + t1.ToString);
  bRecord.RecordSets[k].First;
  t1 := bRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert(t1 = 100, 'bRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 100, t1=' + t1.ToString);

  UpdateJson(bRecord.AsJsonObject.ToJSON, True);

  // Azzero aRecordSet
  aRecordSet.Clear;
  // verifico che record Count = 0
  Assert(aRecordSet.RecordCount = 0, 'aRecordset non ha conteggio = 0');

  // Verifico il record aREcord prima di Inserirlo che non si sa mai  ................................................
  t1 := bRecord.RecordSets[k].RecordCount;
  Assert(t1 = 2, 'bRecord.RecordSets[k] non ha conteggio = 2 ma vale: ' + t1.ToString);
  bRecord.RecordSets[k].First;
  t1 := bRecord.RecordSets[k].CurrentRecord.FieldByName('int').AsInteger;
  Assert(t1 = 100, 'bRecord.RecordSets[k].CurrentRecord.Field(int) non ha valore = 100, t1=' + t1.ToString);
  t2 := bRecord.FieldByName('int').AsInteger;
  Assert(t2 = 100, 'bRecord.FieldByName(int) non ha valore = 100, t2=' + t2.ToString);

  // inserisco 1 aRecord
  aRecordSet.Append(bRecord);
  // inserisco 2 aRecord
  aRecordSet.Append(bRecord);
  // verifico che record Count = 2
  Assert(aRecordSet.RecordCount = 2, 'aRecordset non ha conteggio = 2');

  tmp := aRecordSet.ToJSON;

  UpdateJson(tmp, True);

  bRecordSet.Clear;

  bRecordSet.ReadFromJson(tmp);

  UpdateJson(bRecordSet.ToJSON, True);

end;

procedure TfrmFmxDesktopMain.OrmDataset(Sender: TObject);
var
  Test: IJanuaRecordSet;
  VtMaster, VtDetail: TVirtualTable;
  aDataSetMaster, aDatasetDetail: IJanuaDatasetSerialization;
  aGUID: TGUID;
  DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  { TOrmDatasetFactory = class
    function CreateDatasetSerialization(aRecordSet: IJanuaRecordSet): IJanuaDatasetSerialization; }
begin
  DM := udmVirtualCmsServer.TdmVirtualCmsServer.Create(nil);
  try
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    // Assert.AreEqual(Test.CurrentRecord.RecordSetCount, 1);
    (Test as IMainArguments).Arguments.Dataset := DM.vtArguments;
    Test.DirectLoadFromDataset(DM.vtMainArguments);
    VtMaster := TVirtualTable.Create(nil);
    try
      aDataSetMaster := TOrmDatasetFactory.CreateDatasetSerialization(Test);

      if Test.CurrentRecord.RecordSetCount > 0 then
        aDatasetDetail := TOrmDatasetFactory.CreateDatasetSerialization(Test.CurrentRecord.RecordSets[0]);
      aDataSetMaster.Dataset := VtMaster;
      // Verifico che i campi siano i campi + 1 (uno è il GUID che è impostato come proprietà e non come campo)
      aDataSetMaster.FetchRecordSet;
      VtMaster.First;
      VtDetail := TVirtualTable.Create(nil);
      try
        aDatasetDetail.Master := aDataSetMaster;
        aDatasetDetail.Dataset := VtDetail;
        VtMaster.Next;
        VtDetail.Append;
      finally
        VtDetail.Free
      end;
    finally
      VtMaster.Free;
    end;
  finally
    DM.Free;
  end;

end;

procedure TfrmFmxDesktopMain.PageLoader(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.PageLoader)
end;

procedure TfrmFmxDesktopMain.RankingTable(Sender: TObject);
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  j: integer;
begin
  // Test Header:
  (* UpdateBrowser (TJanuaRanking.AsTableBigHeaderTop(False).AsHtml); *)

  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    FootballServer.Activate;
    // FootballServer.OpenGoalRanking;
    //
    // Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset);
    // FootballServer.cdsGolRanking.Open;
    // Assert.IsTrue(FootballServer.cdsGolRanking.MemDataset.Active, 'cdsGolRanking not active');
    j := FootballServer.cdsGolRanking.RecordCount;
    FootballServer.OpenRanking;
    UpdateBrowser(FootballServer.rankings.AsBigTable(9));

  finally
    FootballServer.Free
  end;

end;

procedure TfrmFmxDesktopMain.SimpleHead(Sender: TObject);
var
  aPage: IJanuaHeadSection;
begin
  aPage := Janua.Html.Impl.TJanuaHeadSection.Create(Janua.Html.Impl.THtmlHelper.Create);
  UpdateBrowser(aPage.AsHtml)

end;

procedure TfrmFmxDesktopMain.SimpleJavascript(Sender: TObject);
var
  aPage: IJanuaHtmlObject;
begin
  aPage := Janua.Html.Impl.TJanuaHtmlFactory.CreateScriptAsScript(Janua.Html.Impl.THtmlHelper.Create, 'WebFont.load({',
    TJanuaMimeType.jmtTextJavascript);
  with aPage do
  begin
    AddLineText
      ('   google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700","Asap+Condensed:500"]},');
    AddLineText('  active: function() {');
    AddLineText('    sessionStorage.fonts = true;');
    AddLineText('  }');
    AddLineText('});');
    CommentAfter := 'end::Web font';
  end;
  UpdateBrowser(aPage.AsHtml)
end;

procedure TfrmFmxDesktopMain.SimpleLink(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.Link)

end;

procedure TfrmFmxDesktopMain.SimpleMeta(Sender: TObject);
begin

end;

procedure TfrmFmxDesktopMain.SimplePage(Sender: TObject);
var
  a: IJanuaHtmlPage;
begin
  a := TJanuaHtmlFactory.CreatePage as IJanuaHtmlPage;
  UpdateBrowser(a.AsHtml)
end;

procedure TfrmFmxDesktopMain.SimpleTag(Sender: TObject);
var
  a, b, c: IJanuaHtmlObject;
  aParams: TJanuaHtmlParams;
begin
  a := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'h1', 'Questo è un Titolo');
  a.CommentBefore := ('Start Simple Tag');
  a.CommentAfter := ('End Simple Tag');
  UpdateBrowser(a.AsHtml);
  a := nil;

  aParams := [TJanuaHtmlParam.Create('charset', 'UTF-8')];
  b := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'meta', aParams, True, False);
  UpdateBrowser(b.AsHtml, True);
  b := nil;

  c := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'div');
  c.CommentBefore := ('Start Simple Div');
  c.CommentAfter := ('End Simple Div');
  c.Id := 'testdiv';
  c.addClass('testclass');
  UpdateBrowser(c.AsHtml);
  c := nil;

end;

procedure TfrmFmxDesktopMain.TabControl1Change(Sender: TObject);
begin
  self.TMSFMXWebBrowser1.Visible := self.TabControl1.ActiveTab = TabBrowser1;
end;

procedure TfrmFmxDesktopMain.TestBaseComponents(Sender: TObject);
begin
  UpdateBrowser(uTestMetro5.TestBaseComponents);
end;

procedure TfrmFmxDesktopMain.OrmMenu(Sender: TObject);
var
  o: IJanuaHtmlObject;
begin
  o := self.GetFootballMenu;
  self.UpdateBrowser(o.AsHtml);
end;

procedure TfrmFmxDesktopMain.UpdateBrowser(aText: string; Append: boolean = False);
begin
  if Append then
    TMSFMXMemo1.Lines.Append(aText)
  else
    TMSFMXMemo1.Lines.Text := aText;

  TMSFMXWebBrowser1.LoadHTML(TMSFMXMemo1.Lines.Text);
end;

procedure TfrmFmxDesktopMain.UpdateJson(aText: string; Append: boolean);
begin
  self.memJson.SyntaxStyles := TMSFMXMemoJavaScriptStyler1;
  self.memJson.Lines.Add('');
  memJson.Lines.Add('***************************************************************************************');
  memJson.Lines.Add('');
  if Append then
    memJson.Lines.Append(aText)
  else
    memJson.Lines.Text := aText;
end;

procedure TfrmFmxDesktopMain.UpdatePascal(aText: string; Append: boolean);
begin
  self.TMSFMXMemo1.SyntaxStyles := self.TMSFMXMemoPascalStyler1;

  if Append then
    TMSFMXMemo1.Lines.Append(aText)
  else
    TMSFMXMemo1.Lines.Text := aText;
end;

initialization

finalization

end.
