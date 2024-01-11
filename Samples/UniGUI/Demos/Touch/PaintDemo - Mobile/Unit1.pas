unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUImForm, uniGUITypes, StdCtrls, UniButton,
  UniScreenMask, UniLabel, UniComboBox, ExtCtrls, UniPanel, Buttons, UniBitBtn,
  uniGUIClasses, uniMultiItem, uniGUIBaseClasses, unimBitBtn, unimSelect,
  unimLabel, uniGUImJSForm, unimPanel, unimButton;

type
  TUniForm1 = class(TUnimForm)
    UniButton1: TUnimButton;
    UniPanel1: TUnimPanel;
    UniComboBox1: TUnimSelect;
    UniScreenMask1: TUniScreenMask;
    UniBitBtn1: TUnimBitBtn;
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
  MainModule, Mainm, ServerModule, UniCanvas, uniGUIApplication;

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
  FPath := UniServerModule.LocalCachePath;
  FName := 'image' + IntToStr(FCnt);
  InterlockedIncrement(FCnt);
  case UniComboBox1.ItemIndex of
    0 :
      begin
        FName:=FName+'.jpg';
        MainmForm.UniCanvas1.SaveToFile(FPath+FName, tiJPG);
      end;
    1 :
      begin
        FName:=FName+'.png';
        MainmForm.UniCanvas1.SaveToFile(FPath+FName, tiPNG);
      end;
    2 :
      begin
        FName:=FName+'.gif';
        MainmForm.UniCanvas1.SaveToFile(FPath+FName, tiGIF);
      end;
    3 :
      begin
        FName:=FName+'.bmp';
        MainmForm.UniCanvas1.SaveToFile(FPath+FName, tiBMP);
      end;
    else
      Exit;
  end;
  UniSession.SendFile(FPath + FName);
end;

procedure TUniForm1.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainmForm.UniCanvas1.AutoSubmit := False;
end;

end.
