program PhoenixVCLLab;

uses
  Vcl.Forms,
  Janua.FDAC.Phoenix.Model in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Model.pas' {dmFDACPhoenixModel: TDataModule},
  Janua.FDAC.Phoenix.Reports in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Reports.pas' {dmFDACPhoenixReports: TDataModule},
  Janua.Phoenix.DMVC in '..\..\..\src\januacore\Janua.Phoenix.DMVC.pas',
  Janua.DMVC.WebModulePhoenix in '..\..\..\src\januawebrest\Janua.DMVC.WebModulePhoenix.pas' {PhoenixWebModule: TWebModule},
  Janua.Phoenix.VCL.RESTLabClient in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.RESTLabClient.pas' {frmPhoenixVCLRESTLabClient},
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  Janua.FDAC.Phoenix.Customers in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Customers.pas' {dmFDACPhoenixCustomers: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Janua.Phoenix.LabREST in '..\..\..\src\januacore\Janua.Phoenix.LabREST.pas',
  Janua.TMS.frmMDIContainer in '..\..\..\src\TMS\Janua.TMS.frmMDIContainer.pas' {frmVCLJanuaMDIContainer},
  Janua.Phoenix.VCL.frmReportPlanner in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.frmReportPlanner.pas' {frmPhoenixVCLReportPlanner},
  Janua.Phoenix.dmIBModel in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBModel.pas' {dmPhoenixIBModel: TDataModule},
  Janua.Phoenix.VCL.dmPlannerController in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.dmPlannerController.pas' {dmVCLPhoenixPlannerController: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmFDACPhoenixReports, dmFDACPhoenixReports);
  Application.CreateForm(TdmFDACPhoenixCustomers, dmFDACPhoenixCustomers);
  Application.CreateForm(TfrmVCLJanuaMDIContainer, frmVCLJanuaMDIContainer);
  Application.CreateForm(TfrmPhoenixVCLReportPlanner, frmPhoenixVCLReportPlanner);
  Application.CreateForm(TdmPhoenixIBModel, dmPhoenixIBModel);
  Application.CreateForm(TdmVCLPhoenixPlannerController, dmVCLPhoenixPlannerController);
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TdmFDACPhoenixLab, dmFDACPhoenixLab);
  Application.CreateForm(TfrmPhoenixVCLRESTLabClient, frmPhoenixVCLRESTLabClient);
  Application.Run;
end.
