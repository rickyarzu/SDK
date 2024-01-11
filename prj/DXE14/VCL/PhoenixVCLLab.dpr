program PhoenixVCLLab;

uses
  Vcl.Forms,
  uPhoenixContainer in 'uPhoenixContainer.pas' {Form2},
  Janua.FDAC.Phoenix.Model in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Model.pas' {dmFDACPhoenixModel: TDataModule},
  Janua.FDAC.Phoenix.Reports in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Reports.pas' {dmFDACPhoenixReports: TDataModule},
  Janua.Phoenix.DMVC in '..\..\..\src\januacore\Janua.Phoenix.DMVC.pas',
  Janua.DMVC.WebModulePhoenix in '..\..\..\src\januawebrest\Janua.DMVC.WebModulePhoenix.pas' {PhoenixWebModule: TWebModule},
  Janua.Phoenix.VCL.RESTLabClient in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.RESTLabClient.pas' {frmPhoenixVCLRESTLabClient},
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  Janua.FDAC.Phoenix.Customers in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Customers.pas' {dmFDACPhoenixCustomers: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmFDACPhoenixCustomers, dmFDACPhoenixCustomers);
  Application.CreateForm(TdmFDACPhoenixReports, dmFDACPhoenixReports);
  Application.CreateForm(TdmFDACPhoenixLab, dmFDACPhoenixLab);
  Application.CreateForm(TfrmPhoenixVCLRESTLabClient, frmPhoenixVCLRESTLabClient);
  Application.Run;
end.
