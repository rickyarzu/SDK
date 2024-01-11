program ImageView;

uses
  Forms,
  ImageViewForm in 'ImageViewForm.pas' {ImageViewFrm},
  ScreenshotFrm in 'ScreenshotFrm.pas' {ScreenshotForm},
  Vcl.Themes,
  Vcl.Styles,
  splash in 'splash.pas' {SplashForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TImageViewFrm, ImageViewFrm);
  Application.CreateForm(TScreenshotForm, ScreenshotForm);
  Application.Run;
end.
