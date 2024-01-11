unit frDataModule;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet, frxExportPDF, frxGradient;

type
  TfrDM = class(TDataModule)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxGradientObject1: TfrxGradientObject;
  private
    procedure CloseDS;
    procedure OpenDS(RepName, Id: string);
    { Private declarations }
  public
    { Public declarations }
    function GenReportPDF(const RepName, Id: string): string;
  end;

implementation

{$R *.dfm}

uses MainModule, ServerModule;

procedure TfrDM.CloseDS;
begin
  UniMainModule.ADOQuery2.Close;
end;

procedure TfrDM.OpenDS(RepName, Id: string);
begin
  UniMainModule.ADOQuery2.Close;
  UniMainModule.ADOQuery2.SQL.Clear;

  UniMainModule.ADOQuery2.SQL.Add('SELECT * FROM '+RepName+'s' + ' WHERE '+RepName+'ID=:ID ');
  UniMainModule.ADOQuery2.Parameters.ParamByName('ID').Value := ID;
  UniMainModule.ADOQuery2.Open;
end;

function TfrDM.GenReportPDF(const RepName, Id: string): string;
begin
  OpenDS(RepName, Id);
  try
    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.ShowProgress := false;

    frxReport1.EngineOptions.SilentMode := True;
    frxReport1.EngineOptions.EnableThreadSafe := True;
    frxReport1.EngineOptions.DestroyForms := False;
    frxReport1.EngineOptions.UseGlobalDataSetList := False;

    frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + RepName + '.fr3');

    frxPDFExport1.Background := True;
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.ShowDialog := False;
    frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    frxPDFExport1.DefaultPath := '';

    frxReport1.PreviewOptions.AllowEdit := False;
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  finally
    CloseDS;
  end;
end;


end.
