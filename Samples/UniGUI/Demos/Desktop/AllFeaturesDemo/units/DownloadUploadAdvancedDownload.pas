//Advanced Download = Download & Upload
unit DownloadUploadAdvancedDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, ServerModule;

type
  TUniDownloadUploadAdvancedDownload = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDownloadUploadAdvancedDownload.UniButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
end;

procedure TUniDownloadUploadAdvancedDownload.UniButton2Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc');
end;

procedure TUniDownloadUploadAdvancedDownload.UniButton3Click(Sender: TObject);
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

procedure TUniDownloadUploadAdvancedDownload.UniButton4Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc', 'NewName.doc');
end;

initialization
  RegisterClass(TUniDownloadUploadAdvancedDownload);
end.
