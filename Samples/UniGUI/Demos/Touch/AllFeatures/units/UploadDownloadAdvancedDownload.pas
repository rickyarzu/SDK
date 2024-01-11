//Advanced Download = Upload & Download
unit UploadDownloadAdvancedDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, ServerModule, DownloadFileAsForm;

type
  TUniUploadDownloadAdvancedDownload = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniUploadDownloadAdvancedDownload.UnimButton1Click(Sender: TObject);
begin
 UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
end;

procedure TUniUploadDownloadAdvancedDownload.UnimButton2Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc');
end;

procedure TUniUploadDownloadAdvancedDownload.UnimButton3Click(Sender: TObject);
begin
  DownloadFileAsForm1.FileName := 'unidoc';
  DownloadFileAsForm1.FileType := 'doc';
  DownloadFileAsForm1.ShowModal();
end;

procedure TUniUploadDownloadAdvancedDownload.UnimButton4Click(Sender: TObject);
var
  S : TStringStream;
begin
  S:=TStringStream.Create('Some text here....');
  try
    UniSession.SendStream(S, 'Mydoc.txt');
  finally
    S.Free;
  end;
end;

initialization
  RegisterClass(TUniUploadDownloadAdvancedDownload);
end.
