//Simple Download = Download & Upload
unit DownloadUploadSimpleDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton, uniLabel, uniGUIBaseClasses,
  uniPanel, ServerModule;

type
  TUniDownloadUploadSimpleDownload = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDownloadUploadSimpleDownload.UniButton1Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.TempFolderPath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.TempFolderURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TUniDownloadUploadSimpleDownload.UniButton2Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.LocalCachePath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.LocalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TUniDownloadUploadSimpleDownload.UniButton3Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.GlobalCachePath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.GlobalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

initialization
  RegisterClass(TUniDownloadUploadSimpleDownload);

end.
