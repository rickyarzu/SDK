//AllFeatures: UniImage,Basic Demo,icon-imageviewer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniLabel, jpeg,
  ExtCtrls, UniImage, UniButton, uniTimer, uniGUIRegClasses,  uniguiclasses,
  uniGUIBaseClasses, uniStrUtils;

type
  TMainForm = class(TUniForm)
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniTimer1: TUniTimer;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
    II : Integer;
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniTimer1.Enabled:=True;
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
var
  FolderPath: string;
begin
  FolderPath :=  TranslateFullPath(UniServerModule.StartPath,'..\..\CommonData\');
  UniImage3.Picture.LoadFromFile(FolderPath+'images\'+IntToStr(II)+'.jpg');
 // UniImage3.Url:='files/images/'+IntToStr(II)+'.jpg';
  Inc(II);
  II:=II mod 5;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
