//AllFeatures: Download,Download - 1,icon-soap-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniLabel,
  UniButton, UniMemo, uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
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

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

{

Note:
Files that are dynamically created by application should be kept in Local Cache Folder.

}

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.TempFolderPath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.TempFolderURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.LocalCachePath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.LocalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
var
  FName : string;
begin
  FName:='demo'+FormatDateTime('hhnnss', Time)+'.txt';
  UniMemo1.Lines.SaveToFile(UniServerModule.GlobalCachePath+FName);

  UniLabel1.Caption:='<a href="'+UniServerModule.GlobalCacheURL+FName+'" target=new>Click here to download: ('+FName+')</a>';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
