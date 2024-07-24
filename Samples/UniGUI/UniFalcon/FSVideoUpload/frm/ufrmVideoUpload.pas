unit ufrmVideoUpload;

interface

uses
  UniFSMultiUpload,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniLabel, Vcl.Imaging.pngimage,
  uniGUIBaseClasses, uniImage, uniHTMLFrame, uniFileUpload, uniMemo,
  uniBasicGrid, uniDBGrid, Data.DB, Datasnap.DBClient, uniDBVerticalGrid,
  uniImageList, uniButton, uniBitBtn, UniFSButton;

type
  TfrmMultiUpload = class(TUniFrame)
    CDS: TClientDataSet;
    DS: TDataSource;
    strngfldCDSFileName: TStringField;
    strngfldCDSExt: TStringField;
    strngfldCDSImage: TStringField;
    imgl: TUniNativeImageList;
    pnlBack: TUniPanel;
    pnlQrCode: TUniPanel;
    lblTittle: TUniLabel;
    Upload: TUniFSMultiUpload;
    dbg: TUniDBGrid;
    btnClear: TUniFSButton;
    UniPanel1: TUniPanel;
    lblTittle1: TUniLabel;
    lblVideo: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UploadUploadCompleted(Sender: TObject; Files: TStrings);
    procedure dbgFieldImageURL(const Column: TUniDBGridColumn;
      const AField: TField; var OutImageURL: string);
    procedure dbgCellClick(Column: TUniDBGridColumn);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;


{$R *.dfm}

procedure TfrmMultiUpload.btnClearClick(Sender: TObject);
begin
  Upload.ClearFiles;
  CDS.EmptyDataSet;
end;

procedure TfrmMultiUpload.dbgCellClick(Column: TUniDBGridColumn);
var
  UrlVideo: string;
begin
  if not CDS.IsEmpty then
  begin
    UrlVideo := '/videos/' +CDS.FieldByName('FileName').AsString;
    lblVideo.Caption :=
      '<video width="100%" autoplay controls> <source src="'+UrlVideo+'" type="video/mp4"> </video>';

    // Download do Vídeo
    // UniSession.SendFile(UrlVideo, CDS.FieldByName('FileName').AsString);
  end;
end;

procedure TfrmMultiUpload.dbgFieldImageURL(const Column: TUniDBGridColumn;
  const AField: TField; var OutImageURL: string);
var
  Ext: string;
begin
  if Column.FieldName = 'Image' then
  begin
    Ext := LowerCase(CDS.FieldByName('Ext').AsString);
    if (Ext = '.png') or (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.gif') or (Ext = '.svg') then
      OutImageURL := imgl.GetImageUrl(1)
    else if (Ext = '.xls') or (Ext = '.xlsx') then
      OutImageURL := imgl.GetImageUrl(2)
    else if Ext = '.html' then
      OutImageURL := imgl.GetImageUrl(3)
    else if (Ext = '.doc') or (Ext = '.docx') then
      OutImageURL := imgl.GetImageUrl(4)
    else if Ext = '.pdf' then
      OutImageURL := imgl.GetImageUrl(5)
    else if (Ext = '.zip') or (Ext = '.rar') then
      OutImageURL := imgl.GetImageUrl(6)
    else if (Ext = '.mp4') or (Ext = '.avi') then
      OutImageURL := imgl.GetImageUrl(7)
    else
      OutImageURL := imgl.GetImageUrl(0)
  end;
end;

procedure TfrmMultiUpload.UploadUploadCompleted(Sender: TObject;
  Files: TStrings);
var
  vI: Integer;
  PathVideoFolder: string;
  VideoTemp: string;
  VideoDest: string;
begin
  for vI := 0 to Files.Count-1 do
  begin
    CDS.Append;
    CDS.FieldByName('FileName').AsString := Files[vI];
    CDS.FieldByName('Ext').AsString := ExtractFileExt(Files[vI]);
    CDS.Post;

    {Copia o vídeo para outro diretório}
    VideoTemp := Upload.LocalCachePath + Files[vI];
    VideoDest := UniServerModule.StartPath + 'videos\' + Files[vI];

    if not DirectoryExists(ExtractFileDir(VideoDest)) then
      ForceDirectories(ExtractFileDir(VideoDest));

    CopyFile(PWideChar(VideoTemp), PWideChar(VideoDest), False);
  end;
end;

procedure TfrmMultiUpload.UniFrameCreate(Sender: TObject);
begin
  CDS.Open;
end;

initialization
  RegisterClass(TfrmMultiUpload);

end.
