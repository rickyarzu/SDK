program AppAndCityBackOffice;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Graphics,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Themes,
  Vcl.Styles,
  Spring,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  Janua.Carservice.VCL.frmBackOfficeMain in '..\..\..\src\VCL\CarService\Janua.Carservice.VCL.frmBackOfficeMain.pas' {frmVCLCarServiceBackOfficeMain},
  uCarServiceBackOfficeProject in 'uCarServiceBackOfficeProject.pas';

{$R *.res}

begin
  {Janua.ViewModels.Framework,}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLCarServiceBackOfficeMain, frmVCLCarServiceBackOfficeMain);
  Application.Run;
end.
