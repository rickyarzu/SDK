//File Upload = Upload & Download
unit UploadDownloadFileUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, unimLabel, uniImage, unimImage,
  uniButton, unimButton, uniGUIBaseClasses, uniGUImJSForm, uniFileUpload,
  unimFileUpload, ServerModule, unimPanel;

type
  TUniUploadDownloadFileUpload = class(TUniFrame)
    UnimFileUpload1: TUnimFileUpload;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimImage1: TUnimImage;
    UnimButton2: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
    UnimLabel2: TUnimLabel;
    UnimPanel2: TUnimPanel;
    UnimPanel3: TUnimPanel;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniFrameCreate(Sender: TObject);
  private
    isImage: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIUtils, jpeg, uniImgTools;

{$R *.dfm}


procedure TUniUploadDownloadFileUpload.UniFrameCreate(Sender: TObject);
begin
  if not DirectoryExists(UniServerModule.StartPath+'UploadFolder\') then
    CreateDir(UniServerModule.StartPath+'UploadFolder\');
end;

procedure TUniUploadDownloadFileUpload.UnimButton1Click(Sender: TObject);
begin
  isImage := True;
  UnimFileUpload1.Execute;
end;

procedure TUniUploadDownloadFileUpload.UnimButton2Click(Sender: TObject);
begin
  isImage := False;
  UnimFileUpload1.Execute;
end;

procedure TUniUploadDownloadFileUpload.UnimFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  G : TGraphic;
  ThumbNail : TJPEGImage;
  DestName : string;
  DestFolder : string;
begin
  if isImage then
  begin
    G := uniStreamToGraphic(AStream);  // create a Graphic object from stream
    ThumbNail := TJPEGImage.Create;
    try
      uniResizeImage(G, ThumbNail, 0, UnimImage1.Height);  // create a small thumbnail for image, so original big image will not be sent back to client browser
      UnimImage1.Picture.Assign(ThumbNail);
    finally
      G.Free;
      ThumbNail.Free;
    end;
  end
  else
  begin
    DestFolder:=UniServerModule.StartPath+'UploadFolder\';
    DestName:=DestFolder+ExtractFileName(UnimFileUpload1.FileName);
    UnimLabel1.Caption:='File Name: '+UnimFileUpload1.FileName;
    CopyFile(PChar(AStream.FileName), PChar(DestName), False);
    ShowMessage('File: '+UnimFileUpload1.FileName+' Uploaded to folder: '+DestFolder);
  end;
end;

initialization
  RegisterClass(TUniUploadDownloadFileUpload);
end.
