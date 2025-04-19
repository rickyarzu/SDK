program JanuaVCLMegaDemo;

uses
  Vcl.Forms,
  System.SysUtils,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Janua.VCL.frmMegaDemo in 'Janua.VCL.frmMegaDemo.pas' {frmVCLJanuaMegaDemo},
  Janua.Core.DataModule in '..\..\..\src\januacore\datamodule\Janua.Core.DataModule.pas' {JanuaCoreDataModule: TDataModule},
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  uJanuaVCLMegaDemoConfig in 'uJanuaVCLMegaDemoConfig.pas';

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('megademo.januaproject.it');
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  TJanuaMegaDemoVCLApplication.ApplicationSetup('megademo.januaproject.it');
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLJanuaMegaDemo, frmVCLJanuaMegaDemo);
  Application.Run;
end.
