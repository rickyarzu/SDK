unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, DB, uniGUIBaseClasses, uniURLFrame, unimURLFrame,
  ServerModule, uniButton, frxGradient, frxClass, frxDBSet, frxExportPDF;

type
  TUniForm1 = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    procedure OpenDS;
    procedure PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);
    procedure CloseDS;
    { Private declarations }
  public
    { Public declarations }
    InvNum: string;
    HTMLTemplate : string;
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uniGUIServerUtils, IniFiles;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TUniForm1.CloseDS;
begin
  UniMainModule.ADOQuery1.Close;
end;

procedure TUniForm1.OpenDS;
begin
  UniMainModule.ADOQuery1.Close;
  UniMainModule.ADOQuery1.SQL.Clear;
  UniMainModule.ADOQuery1.SQL.Add('SELECT * FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
  UniMainModule.ADOQuery1.Parameters.ParamByName('Num').Value := InvNum;
  UniMainModule.ADOQuery1.Open;
end;

procedure TUniForm1.UniFormBeforeShow(Sender: TObject);
begin
  OpenDS;
  try
    PrepareAndShow(frxReport1, frxPDFExport1);
  finally
    CloseDS;
  end;
end;

procedure TUniForm1.PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);
const
  ScaleQuality = 4.0;  // this determines quality of converted image. The higher the  better
var
  AUrl : string;
  Pic : TfrxPictureView;
  PConvert : TUniHtmlToImage;
  Ini : TIniFile;
begin
  Pic := Report.FindComponent('HTMLImage') as TfrxPictureView;

  if not Assigned(Pic) then Exit;

  Pic.HightQuality := True; // choose High Quality image

  Ini := TIniFile.Create(UniServerModule.StartPath + 'settings.ini');
  PConvert := TUniHtmlToImage.Create;
  try
    PConvert.CmdToolPath := Ini.ReadString('paths', 'wkhtmltopdf', '');
    PConvert.HTML := HTMLTemplate;
    PConvert.Width := Trunc(Pic.Width);
    PConvert.Height := Trunc(Pic.Height);
    PConvert.Scale := ScaleQuality;
    PConvert.Convert;

    Pic.Picture.Assign(PConvert.Image);
  finally
    PConvert.Free;
    Ini.Free;
  end;

  Report.PrintOptions.ShowDialog := False;
  Report.ShowProgress := False;

  Report.EngineOptions.SilentMode := True;
  Report.EngineOptions.EnableThreadSafe := True;
  Report.EngineOptions.DestroyForms := False;
  Report.EngineOptions.UseGlobalDataSetList := False;

  Exp.PrintOptimized := True; // make sure PDF image quality is good enough
  Exp.Background := True;
  Exp.ShowProgress := False;
  Exp.ShowDialog := False;
  Exp.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', AUrl, True);
  Exp.DefaultPath := '';

  Report.PreviewOptions.AllowEdit := False;
  Report.PrepareReport;
  Report.Export(Exp);

  UniURLFrame1.URL := AUrl;
end;

end.
