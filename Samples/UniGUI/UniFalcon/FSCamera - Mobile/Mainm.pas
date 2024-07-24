unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUImClasses,
  uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniLabel, unimLabel, uniPanel, uniHTMLFrame, UniFSCamera, UnimFSCamera,
  uniMemo, unimMemo;

type
  TMainmForm = class(TUnimForm)
    Camera: TUnimFSCamera;
    memLog: TUnimMemo;
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
    procedure CameraCameraError(Sender: TObject; Name, Error: string);
    procedure CameraCameraOnGetImage(Sender: TObject; PathImage: string);
  private

  public

  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmCapture, ServerModule;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.CameraCameraError(Sender: TObject; Name, Error: string);
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraOnGetError: ' + Name + ' ' + Error );
end;

procedure TMainmForm.CameraCameraOnGetImage(Sender: TObject; PathImage: string);
var
  PathImageFolder: string;
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraGetImage: ' + PathImage);

  {copia a imagem para pasta da aplicação}
  PathImageFolder := UniServerModule.StartPath + 'imagecamera';

  if not DirectoryExists(PathImageFolder) then
    ForceDirectories(PathImageFolder);

  CopyFile(PWideChar(PathImage), PWideChar(PathImageFolder + '\' + ExtractFileName(PathImage)), False);

  memLog.Lines.Add(DateTimeToStr(Now) + ' : DirSavedImage: ' + PathImageFolder + '\' + ExtractFileName(PathImage));

  frmCapture.Show();
  frmCapture.img1.Url := '/imagecamera/' + ExtractFileName(PathImage);
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0: Camera.Start;
    1: Camera.Stop;
    2: Camera.StartCameraFront;
    3: Camera.StartCameraBack;
    4: Camera.GetImage();
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
