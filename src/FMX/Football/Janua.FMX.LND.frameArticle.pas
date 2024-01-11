unit Janua.FMX.LND.frameArticle;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Jorm.Cms.MainArguments.Intf, Jorm.Cms.Articles.Intf, Janua.Orm.Intf,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation, FMX.TMSBaseControl, FMX.TMSScrollControl, FMX.TMSRichEditorBase,
  FMX.TMSRichEditor, FMX.TabControl, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.WebBrowser;

type
  TFrameLNDArticle = class(TFrame)
    TabControl1: TTabControl;
    TabItemArticle: TTabItem;
    TabItemAttachments: TTabItem;
    Rectangle1: TRectangle;
    TMSFMXRichEditor1: TTMSFMXRichEditor;
    Image1: TImage;
    btnOpenAttachFile: TButton;
    btnShowAttachments: TButton;
    TextConnectionError4: TText;
    TextSubTitle: TText;
    TextTitle: TText;
    ListViewAttachments: TListView;
    WebBrowser1: TWebBrowser;
    procedure btnOpenAttachFileClick(Sender: TObject);
    procedure btnShowAttachmentsClick(Sender: TObject);
    procedure ListViewAttachmentsItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    FArticle: IArticle;
    FGUID: TGUID;
    procedure SetArticle(const Value: IArticle);
    procedure SetupList;
    procedure UpdateView;
    { Private declarations }
  public
    { Public declarations }
    property Article: IArticle read FArticle write SetArticle;
  end;

implementation

uses
  System.StrUtils,
  // Janua
  Jorm.Cms.MainArguments.Impl, Jorm.Cms.Articles.Impl, Janua.Orm.Impl, Janua.Core.Classes, Janua.Core.Types,
  Janua.Application.Framework, Janua.FMX.Cloud, Spring, Janua.FMX.LND.dmMain;

{$R *.fmx}
{ TFrameLNDArticle }

procedure TFrameLNDArticle.btnOpenAttachFileClick(Sender: TObject);
begin
  LNDMainDataModule.OpenPreviewPdf(self.FArticle.MainAttachId.AsLargeInt);
  // LNDMainDataModule.OpenMainAttachID;
end;

procedure TFrameLNDArticle.btnShowAttachmentsClick(Sender: TObject);
begin
  self.TabControl1.Next(TTabtransition.Slide);
end;

procedure TFrameLNDArticle.ListViewAttachmentsItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  LNDMainDataModule.OpenPreviewPdf(AItem.Tag);
end;

procedure TFrameLNDArticle.SetArticle(const Value: IArticle);
const
  I: Int64 = 0;
begin
  Guard.CheckNotNull(Value, 'TFrameLNDArticle.SetArticle nil');
  FArticle := Value;
  // if self.FGUID <> FArticle.GUID then
  begin
    FGUID := FArticle.GUID;
    if self.FArticle.Attachments.RecordCount > 0 then
    begin
      FArticle.Attachments.First;
      while not FArticle.Attachments.Eof do
      begin
        Guard.CheckTrue(FArticle.Attachments.FileId.AsInteger <> I, 'FArticle.Attachments.FileId = 0');
        FArticle.Attachments.Next;
      end;
    end;
    UpdateView;
  end;
end;

procedure TFrameLNDArticle.SetupList;
var
  AItem: TListViewItem;
begin
  // Codice che imposta la lista degli allegati come arriva dall'articolo.........................
  self.ListViewAttachments.Images := LNDMainDataModule.ImageList1;

  ListViewAttachments.BeginUpdate;
  ListViewAttachments.Items.Clear;
  FArticle.Attachments.First;
  while not FArticle.Attachments.Eof do
  begin
    AItem := ListViewAttachments.Items.Add;
    Guard.CheckTrue(FArticle.Attachments.FileId.AsInteger <> 0, 'FArticle.Attachments.FileId = 0');
    AItem.Tag := self.FArticle.Attachments.FileId.AsInteger;
    AItem.Text := self.FArticle.Attachments.Description.AsString;
    AItem.ImageIndex := 5;
    FArticle.Attachments.Next
  end;
  ListViewAttachments.EndUpdate;
end;

procedure TFrameLNDArticle.UpdateView;
var
  LFile, LUrl, LHtml: string;
  aStream: TMemoryStream;
begin
  if Article.MainImageId.AsLargeInt > 0 then
  begin
    LFile := self.Article.MainImageId.AsString + '.jpg';
    LUrl := TJanuaApplication.WebServer + '/?page=image&file=' + LFile;
    // Componente Cloud Image che funziona solo su iOS
    // self.TMSFMXCloudImage1.URL := sUrl;
    // Componente Custom e funzione interna Android
    // procedure CloudDownload(aFileName: string);
    Janua.FMX.Cloud.CloudImageDownload(LUrl, LFile, self.Image1);
  end;

  self.TextConnectionError4.Visible := True;

  if TMSFMXRichEditor1.Visible then
  begin
    aStream := TMemoryStream.Create;
    try
      self.TMSFMXRichEditor1.Clear;
      self.Article.Article.SaveToStream(aStream);
      aStream.Position := 0;
      self.TMSFMXRichEditor1.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
    // self.Article := self.Article;
  end
  else
  begin
    LHtml := '<HTML><BODY>';
    LHtml := LHtml + self.Article.Text.AsString + '</BODY></HTML>';
    self.WebBrowser1.LoadFromStrings(LHtml, TJanuaApplication.WebServer);
  end;

  TextConnectionError4.Visible := False;
  TextTitle.Text := self.Article.Title.AsString;
  TextSubTitle.Visible := self.Article.Abstract.AsString <> '';
  if TextSubTitle.Visible then
    TextSubTitle.Text := self.Article.Abstract.AsString;
  btnOpenAttachFile.Visible := not(self.Article.MainAttachId.AsLargeInt = 0);
  btnShowAttachments.Visible := not(self.Article.Attachments.RecordCount = 0);
  if btnShowAttachments.Visible then
    SetupList;

end;

end.
