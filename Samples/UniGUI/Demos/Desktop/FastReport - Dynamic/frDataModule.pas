unit frDataModule;

interface

uses
  SysUtils, Classes, frxGradient, frxClass, frxDBSet, frxExportPDF;

type
  TfrDM = class(TDataModule)
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxReport1: TfrxReport;
  private
    procedure OpenDS(const InvNum: string);
    procedure CloseDS;
    { Private declarations }
  public
    { Public declarations }
    function GenReportPDF(const InvNum: string): string;
  end;

implementation

uses
  MainModule, ServerModule;

{$R *.dfm}


{ TfrDM }
procedure TfrDM.OpenDS(const InvNum: string);
begin
  UniMainModule.ADOQuery1.Close;
  UniMainModule.ADOQuery1.SQL.Clear;
  UniMainModule.ADOQuery1.SQL.Add('SELECT * FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
  UniMainModule.ADOQuery1.Parameters.ParamByName('Num').Value := InvNum;
  UniMainModule.ADOQuery1.Open;
end;

procedure TfrDM.CloseDS;
begin
  UniMainModule.ADOQuery1.Close;
end;

function TfrDM.GenReportPDF(const InvNum: string): string;
begin
  OpenDS(InvNum);
  try
    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.ShowProgress := false;

    frxReport1.EngineOptions.SilentMode := True;
    frxReport1.EngineOptions.EnableThreadSafe := True;
    frxReport1.EngineOptions.DestroyForms := False;
    frxReport1.EngineOptions.UseGlobalDataSetList := False;

    frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + 'rp.fr3');
    if frxReport1.Version >= '6.0.0' then
      frxReport1.DataSets.Add(frxDBDataset1); // FR 6.x requires adding the DataSet(s) manually

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
