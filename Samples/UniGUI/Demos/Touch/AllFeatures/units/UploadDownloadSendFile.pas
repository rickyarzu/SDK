//Send File = Upload & Download
unit UploadDownloadSendFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, uniButton,
  unimButton, SendFileAsForm, ServerModule;

type
  TUniUploadDownloadSendFile = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    UnimButton5: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniUploadDownloadSendFile.UnimButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
end;

procedure TUniUploadDownloadSendFile.UnimButton2Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc');
end;

procedure TUniUploadDownloadSendFile.UnimButton3Click(Sender: TObject);
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

procedure TUniUploadDownloadSendFile.UnimButton4Click(Sender: TObject);
begin
// see ServerModule.pas to see how mime type for "xlsx" extension is registered
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unixls.xlsx');
end;

procedure TUniUploadDownloadSendFile.UnimButton5Click(Sender: TObject);
begin
  UniSendFileAs.FileName := 'unipdf';
  UniSendFileAs.FileType := 'pdf';
  UniSendFileAs.ShowModal();
end;

initialization
  RegisterClass(TUniUploadDownloadSendFile);

end.
