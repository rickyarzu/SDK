unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniButton,
  UniScreenMask, UniLabel, UniComboBox, ExtCtrls, UniPanel, Buttons, UniBitBtn,
  uniGUIClasses, uniMultiItem, uniGUIBaseClasses;

type
  TUniForm1 = class(TUniForm)
    UniButton1: TUniButton;
    UniPanel1: TUniPanel;
    UniComboBox1: TUniComboBox;
    UniLabel1: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, Main, ServerModule, UniCanvas, uniGUIApplication;

var
  FCnt : Integer=0;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniBitBtn1Click(Sender: TObject);
var
  FName, FPath : string;
begin
  FPath:=UniServerModule.LocalCachePath;
  FName:='image'+IntToStr(FCnt);
  Inc(FCnt);
  case UniComboBox1.ItemIndex of
    0 :
      begin
        FName:=FName+'.jpg';
        MainForm.UniCanvas1.SaveToFile(FPath+FName, tiJPG);
      end;
    1 :
      begin
        FName:=FName+'.png';
        MainForm.UniCanvas1.SaveToFile(FPath+FName, tiPNG);
      end;
    2 :
      begin
        FName:=FName+'.gif';
        MainForm.UniCanvas1.SaveToFile(FPath+FName, tiGIF);
      end;
    3 :
      begin
        FName:=FName+'.bmp';
        MainForm.UniCanvas1.SaveToFile(FPath+FName, tiBMP);
      end;
    else
      Exit;
  end;
  UniSession.SendFile(FPath+FName);
//  UniLabel2.Caption:='<a href="'+UniServerModule.LocalCacheURL+FName+'" target="_blank">Click to download</a>';
end;

procedure TUniForm1.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.UniCanvas1.AutoSubmit:=False;
end;

end.
