unit januareport;

interface

uses
  SysUtils, Classes, Forms, QuickRpt, ufrmJanuaReports, DB, functions,
  januaprinters;

type
  TJanuaReport = class(TComponent)
  private
    FForm: TfrmJanuaReport;
    FQuickReport: TQuickRep;
    FParams: TParams;
    aForm: TfrmJanuaReport;
    FFileLocation: string;
    FFileName: string;
    FPDFFile: string;
    FKeepFile: boolean;
    FBoolPreview: boolean;
    FJanuaPrinter: TJanuaPrinters;
    //FFormPDF: TJanuaPreviewPDF;
    FCopies: integer;
    FActive: boolean;
    procedure SetQuickReport(const Value: TQuickRep);
    procedure SetFileLocation(const Value: string);
    procedure SetFileName(const Value: string);
    function pdfPrint: string;
    procedure PDFExport;
    procedure SetPDFFile(const Value: string);
    procedure SetBoolPreview(const Value: boolean);
    procedure SetKeepFile(const Value: boolean);
    procedure PrintPreviewFilePdf;
    procedure SetCopies(const Value: integer);
    procedure SetActive(const Value: boolean);
    procedure FreeReport; 
  public
    { Public declarations }
    procedure Activate; virtual;
    function GenerateFile: string; 
  published
    { Published declarations }
    property QuickReport: TQuickRep read FQuickReport write SetQuickReport;
    property Form: TfrmJanuaReport read FForm;
    property Params: TParams read FParams;
    property FileLocation: string read FFileLocation write SetFileLocation;
    property FileName: string read FFileName write SetFileName;
    property PDFFile: string read FPDFFile write SetPDFFile;
    property BoolPreview: boolean read FBoolPreview write SetBoolPreview;
    property KeepFile: boolean read FKeepFile write SetKeepFile;
    property JanuaPrinter: TJanuaPrinters read FJanuaPrinter;
    property Copies: integer read FCopies write SetCopies;
    property Active: boolean read FActive write SetActive;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaReport]);
end;

{ TJanuaReport }



procedure TJanuaReport.FreeReport;
begin
   FreeAndNil(FForm); 
end;

procedure TJanuaReport.PDFExport;
begin
  // ExportToPDF(FQuickReport, FFileLocation + FFilename, True, False);
end;

function TJanuaReport.PDFPrint: string;
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  filename: string;
  i: integer;
begin
       // procedura di stampa in acrobat dei reports ...
      Present:= Now();
      DecodeDate(Present, Year, Month, Day);
      DecodeTime(Present,Hour,  Min, Sec, MSec);
      Ffilename := nlpad(year, 4, '0') + nlpad(month, 2, '0') + nlpad(day, 2, '0')
                + nlpad(hour, 2, '0') + nlpad(min, 2, '0') + nlpad(sec, 2, '0') +
                IntToStr(msec);

      // la funzione ritorna il nome del file
      Result := Ffilename;

      i := FJanuaPrinter.FindPrinter('CutePDF Writer');
      
      FQuickreport.Prepare;
      PDFExport;
      FPDFFile := Ffilename;

      if Fboolpreview then  PrintPreviewFilePdf;

      // il file temporaneo se non è richiesto viene eliminato
      if not(Fkeepfile) then begin
          DeleteFile(PChar(FFileLocation + Ffilename));
          FPDFFile:= '';
      end;
end;

procedure TJanuaReport.Activate;
begin
    aForm :=  TfrmJanuaReport(FForm).Create(self);
    FQuickReport := aForm.QuickRep;
end;


procedure TJanuaReport.PrintPreviewFilePdf;
var
   i: integer;
  // frmPdf: TjanuaPreviewPDF;
begin
  {
      if Fboolpreview then
      try
         frmPdf := TjanuaPreviewPDF.Create(nil) ;
         frmPdf.AcroPDF1.LoadFile(filename);
         frmPdf.AcroPDF1.setZoom(100);
         frmPdf.AcroPDF1.gotoFirstPage;
         frmPdf.ShowModal;
      finally
         FreeAndNil(frmPdf);
      end
      else
      try
         frmPdf := TjanuaPreviewPDF.Create(nil) ;
         if FCopies <= 1 then
            begin
               frmPdf.AcroPDF1.gotoFirstPage;
               frmPdf.AcroPDF1.printAll;
            end
            else
                for I := 1 to FCopies  do
                begin
                    frmPdf.AcroPDF1.gotoFirstPage;
                    frmPdf.AcroPDF1.printAll;
                end;
      finally
                 FreeAndNil(frmPdf);
      end;
   }


end;

function TJanuaReport.GenerateFile: string;
begin
  FQuickReport.Prepare;
  PDFExport;
end;

procedure TJanuaReport.SetActive(const Value: boolean);
begin
  FActive := Value;
  if FActive then Activate; 
  
end;

procedure TJanuaReport.SetBoolPreview(const Value: boolean);
begin
  FBoolPreview := Value;
end;

procedure TJanuaReport.SetCopies(const Value: integer);
begin
  FCopies := Value;
end;

procedure TJanuaReport.SetFileLocation(const Value: string);
begin
  FFileLocation := Value;
end;

procedure TJanuaReport.SetFileName(const Value: string);
begin
  FFileName := Value;
end;

procedure TJanuaReport.SetKeepFile(const Value: boolean);
begin
  FKeepFile := Value;
end;


procedure TJanuaReport.SetPDFFile(const Value: string);
begin
  FPDFFile := Value;
end;

procedure TJanuaReport.SetQuickReport(const Value: TQuickRep);
begin
  FQuickReport := Value;
end;

end.
