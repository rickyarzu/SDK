unit uFrmCamera;

interface

uses
  UniFSCamera,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniImage, uniGUIBaseClasses, uniPanel,
  uniButton, uniBitBtn, UniFSButton, uniHTMLFrame, uniScrollBox, uniMemo;

type
  TfrmCamera = class(TUniFrame)
    pnlCenter: TUniPanel;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    btnStart: TUniFSButton;
    btnStop: TUniFSButton;
    lbl1: TUniLabel;
    btnGetImage: TUniFSButton;
    btnViewLog: TUniFSButton;
    ScrollBox: TUniScrollBox;
    img1: TUniImage;
    Camera: TUniFSCamera;
    memLog: TUniMemo;
    UniLabel1: TUniLabel;
    btnOtherCamera: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure CameraCameraError(Sender: TObject; Name, Error: string);
    procedure CameraCameraStart(Sender: TObject);
    procedure CameraCameraStop(Sender: TObject);
    procedure CameraCameraOnGetImage(Sender: TObject; PathImage: string);
    procedure btnStopClick(Sender: TObject);
    procedure btnGetImageClick(Sender: TObject);
    procedure btnOtherCameraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer, uFrmOtherCamera, ServerModule;

{$R *.dfm}

procedure TfrmCamera.btnGetImageClick(Sender: TObject);
begin
  Camera.GetImage();
end;

procedure TfrmCamera.btnOtherCameraClick(Sender: TObject);
begin
  frmOtherCamera.Show;
end;

procedure TfrmCamera.btnStartClick(Sender: TObject);
begin
  Camera.Start;
end;

procedure TfrmCamera.btnStopClick(Sender: TObject);
begin
  Camera.Stop;
end;

procedure TfrmCamera.CameraCameraError(Sender: TObject; Name,
  Error: string);
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraOnGetError: ' + Name + ' ' + Error );
end;

procedure TfrmCamera.CameraCameraOnGetImage(Sender: TObject;
  PathImage: string);
var
  PathImageFolder: string;
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraGetImage: ' + PathImage);

  {copia a imagem para pasta da aplicação}
  PathImageFolder := UniServerModule.StartPath + 'imagecamera';

  if not DirectoryExists(PathImageFolder) then
    ForceDirectories(PathImageFolder);

  CopyFile(PWideChar(PathImage), PWideChar(PathImageFolder + '\' + ExtractFileName(PathImage)), False);

  {apresenta a imagem da pasta da aplicação}
  img1.Url := '/imagecamera/' + ExtractFileName(PathImage);

  memLog.Lines.Add(DateTimeToStr(Now) + ' : DirSavedImage: ' + PathImageFolder + '\' + ExtractFileName(PathImage));
end;

procedure TfrmCamera.CameraCameraStart(Sender: TObject);
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraStart');
end;

procedure TfrmCamera.CameraCameraStop(Sender: TObject);
begin
  memLog.Lines.Add(DateTimeToStr(Now) + ' : CameraStop');
end;

procedure TfrmCamera.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSCamera - Component Version: '+UniFSCamera.PackageVersion;
end;

initialization
  RegisterClass(TfrmCamera);

end.
