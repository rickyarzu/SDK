// Send File =  Download & Upload
unit DownloadUploadSendFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, ServerModule;

type
  TUniDownloadUploadSendFile = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDownloadUploadSendFile.UniButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
end;

procedure TUniDownloadUploadSendFile.UniButton2Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc');
end;

procedure TUniDownloadUploadSendFile.UniButton3Click(Sender: TObject);
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

procedure TUniDownloadUploadSendFile.UniButton4Click(Sender: TObject);
begin
// see ServerModule.pas to see how mime type for "xlsx" extension is registered
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unixls.xlsx');
end;

procedure TUniDownloadUploadSendFile.UniButton5Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf', 'New Name.pdf');
end;

initialization
  RegisterClass(TUniDownloadUploadSendFile);
end.
