program FlexcelDatasetExport;

uses
  Vcl.Forms,
  uExcelExport in '..\src\uExcelExport.pas' {frmExcelExport},
  Janua.TMS.ExcelExport in '..\..\..\src\TMS\Janua.TMS.ExcelExport.pas',
  udmPostgresTest in '..\src\udmPostgresTest.pas' {dmPostgresTest: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExcelExport, frmExcelExport);
  Application.CreateForm(TdmPostgresTest, dmPostgresTest);
  Application.Run;
end.
