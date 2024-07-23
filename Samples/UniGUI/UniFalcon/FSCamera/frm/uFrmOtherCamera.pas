unit uFrmOtherCamera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSCamera, uniButton, uniBitBtn, UniFSButton, uniImage, uniScrollBox,
  uniLabel;

type
  TfrmOtherCamera = class(TUniForm)
    Camera: TUniFSCamera;
    btnStart: TUniFSButton;
    btnStop: TUniFSButton;
    ScrollBox: TUniScrollBox;
    img1: TUniImage;
    btnGetImage: TUniFSButton;
    imgFolder: TUniImage;
    lblImage: TUniLabel;
    lblPath: TUniLabel;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnGetImageClick(Sender: TObject);
    procedure CameraCameraOnGetImage(Sender: TObject; PathImage: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmOtherCamera: TfrmOtherCamera;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uniGUIServer, ServerModule;

function frmOtherCamera: TfrmOtherCamera;
begin
  Result := TfrmOtherCamera(UniMainModule.GetFormInstance(TfrmOtherCamera));
end;

procedure TfrmOtherCamera.btnGetImageClick(Sender: TObject);
begin
  Camera.GetImage();
end;

procedure TfrmOtherCamera.btnStartClick(Sender: TObject);
begin
  Camera.Start;
end;

procedure TfrmOtherCamera.btnStopClick(Sender: TObject);
begin
  Camera.Stop;
end;

procedure TfrmOtherCamera.CameraCameraOnGetImage(Sender: TObject;
  PathImage: string);
var
  PathImageFolder: string;
begin
  img1.Url := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);

  {copia a imagem para pasta da aplicação}
  PathImageFolder := UniServerModule.StartPath + 'imagecamera';

  if not DirectoryExists(PathImageFolder) then
    ForceDirectories(PathImageFolder);

  CopyFile(PWideChar(PathImage), PWideChar(PathImageFolder +'\'+ ExtractFileName(PathImage)), False);

  {apresenta a imagem da pasta da aplicação}
  imgFolder.Url := '/imagecamera/' + ExtractFileName(PathImage);
end;

end.
