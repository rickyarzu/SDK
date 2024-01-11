//File Upload = Download & Upload
unit DownloadUploadFileUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniFileUpload, uniImage,
  uniPanel, uniButton, uniBitBtn, uniLabel, ServerModule;

type
  TUniDownloadUploadFileUpload = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniLabel4: TUniLabel;
    UniFileUpload1: TUniFileUpload;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniFrameCreate(Sender: TObject);
  private
    IsImage : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDownloadUploadFileUpload.UniBitBtn1Click(Sender: TObject);
begin
  IsImage:=True;
  UniFileUpload1.Execute;
end;

procedure TUniDownloadUploadFileUpload.UniBitBtn2Click(Sender: TObject);
begin
  IsImage:=False;
  UniFileUpload1.Execute;
end;

procedure TUniDownloadUploadFileUpload.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  DestName : string;
  DestFolder : string;
begin
  if IsImage then
  begin
    UniImage1.Picture.LoadFromFile(AStream.FileName);
    UniLabel3.Caption:='File Name: '+UniFileUpload1.FileName;
  end
  else
  begin
    DestFolder:=UniServerModule.StartPath+'UploadFolder\';
    DestName:=DestFolder+ExtractFileName(UniFileUpload1.FileName);
    UniLabel4.Caption:='File Name: '+UniFileUpload1.FileName;
    CopyFile(PChar(AStream.FileName), PChar(DestName), False);
    ShowMessage('File: '+UniFileUpload1.FileName+' Uploaded to folder: '+DestFolder);
  end;
end;

procedure TUniDownloadUploadFileUpload.UniFrameCreate(Sender: TObject);
begin
  if not DirectoryExists(UniServerModule.StartPath+'UploadFolder\') then
    CreateDir(UniServerModule.StartPath+'UploadFolder\');
end;

initialization
  RegisterClass(TUniDownloadUploadFileUpload);
end.
