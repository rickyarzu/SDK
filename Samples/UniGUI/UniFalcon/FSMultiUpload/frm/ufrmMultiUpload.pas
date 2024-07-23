unit ufrmMultiUpload;

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
    pnlQrCode: TUniPanel;
    CDS: TClientDataSet;
    DS: TDataSource;
    pnlCenter: TUniPanel;
    dbg: TUniDBGrid;
    strngfldCDSFileName: TStringField;
    strngfldCDSExt: TStringField;
    strngfldCDSImage: TStringField;
    Upload: TUniFSMultiUpload;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    imgl: TUniNativeImageList;
    btnClear: TUniFSButton;
    strngfldCDSImgDelete: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure UploadUploadCompleted(Sender: TObject; Files: TStrings);
    procedure dbgFieldImageURL(const Column: TUniDBGridColumn;
      const AField: TField; var OutImageURL: string);
    procedure dbgCellClick(Column: TUniDBGridColumn);
    procedure btnClearClick(Sender: TObject);
    procedure strngfldCDSImgDeleteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    procedure ExcluirAnexo();
  public
    { Public declarations }
  end;

implementation


{$R *.dfm}

procedure TfrmMultiUpload.btnClearClick(Sender: TObject);
begin
  Upload.ClearFiles;
  CDS.EmptyDataSet;
end;

procedure TfrmMultiUpload.dbgCellClick(Column: TUniDBGridColumn);
begin
  if not CDS.IsEmpty then
  begin
    if Column.FieldName = 'ImgDelete' then
      ExcluirAnexo
    else
      UniSession.SendFile(Upload.LocalCachePath+CDS.FieldByName('FileName').AsString, CDS.FieldByName('FileName').AsString);
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
    else
      OutImageURL := imgl.GetImageUrl(0)
  end;
end;

procedure TfrmMultiUpload.ExcluirAnexo;
begin
  DeleteFile(Upload.LocalCachePath + CDS.FieldByName('FileName').AsString);
  CDS.Delete;
end;

procedure TfrmMultiUpload.strngfldCDSImgDeleteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := '<i title="Excluir" class="far fa-lg fa-trash-alt"; style="color:#e43030; cursor:pointer; margin: 5px 0px 10px 0px;"></i>';
end;

procedure TfrmMultiUpload.UploadUploadCompleted(Sender: TObject;
  Files: TStrings);
var
  vI: Integer;
begin
  for vI := 0 to Files.Count-1 do
  begin
    CDS.Append;
    CDS.FieldByName('FileName').AsString := Files[vI];
    CDS.FieldByName('Ext').AsString := ExtractFileExt(Files[vI]);
    CDS.Post;
  end;
end;

procedure TfrmMultiUpload.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSMultiUpload - Component Version: '+UniFSMultiUpload.PackageVersion;

  CDS.Open;
end;

initialization
  RegisterClass(TfrmMultiUpload);

end.
