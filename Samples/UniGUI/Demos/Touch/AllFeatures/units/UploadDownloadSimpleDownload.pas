//Simple Download = Upload & Download
unit UploadDownloadSimpleDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, uniLabel,
  unimLabel, uniMemo, unimMemo, uniButton, unimButton, ServerModule, uniPanel;

type
  TUniUploadDownloadSimpleDownload = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimMemo1: TUnimMemo;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel2: TUnimContainerPanel;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniUploadDownloadSimpleDownload.UnimButton1Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UnimMemo1.Lines.SaveToFile(UniServerModule.TempFolderPath+FName);

  UnimLabel1.Caption:='<a href="'+UniServerModule.TempFolderURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TUniUploadDownloadSimpleDownload.UnimButton2Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UnimMemo1.Lines.SaveToFile(UniServerModule.LocalCachePath+FName);

  UnimLabel1.Caption:='<a href="'+UniServerModule.LocalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TUniUploadDownloadSimpleDownload.UnimButton3Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UnimMemo1.Lines.SaveToFile(UniServerModule.GlobalCachePath+FName);

  UnimLabel1.Caption:='<a href="'+UniServerModule.GlobalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

initialization
  RegisterClass(TUniUploadDownloadSimpleDownload);

end.
