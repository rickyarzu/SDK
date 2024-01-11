unit Janua.Legacy.Application;

interface

uses
  // Quick Report
  QuickRpt, QRPDFFilt, System.Classes;

type
  TJanuaLegacyApplication = class
  public
    class procedure PDFExportToStream(aReport: TQuickRep; aStream: TMemoryStream; aPrepared: boolean = True;
      aShowFilterSetup: boolean = False);
    class procedure PDFExport(Filename: String; Report: TQuickRep; aPrepared: boolean = True);
  end;

implementation

uses System.StrUtils, System.SysUtils, System.Math, Winapi.Windows, System.Win.ComObj, System.Win.Registry,
  Janua.Core.Functions, Janua.Application.Framework,
  // Quick Report
  {Gnostice} {QuickReport} QRPrntr;

{ TJanuaLegacyApplication }

class procedure TJanuaLegacyApplication.PDFExportToStream(aReport: TQuickRep; aStream: TMemoryStream;
  aPrepared: boolean = True; aShowFilterSetup: boolean = False);
begin
  { var
    LgtPDFEngine1: TgtPDFEngine;
    begin
    LgtPDFEngine1 := TgtPDFEngine.Create(nil);
    try
    LgtPDFEngine1.UserStream := aStream;
    if not aPrepared then
    aReport.Prepare;
    LgtPDFEngine1.Preferences.OutputToUserStream := True;
    LgtPDFEngine1.Preferences.ShowSetupDialog := aShowFilterSetup;
    aReport.ShowProgress := aShowFilterSetup;
    aStream.Position := 0;
    finally
    LgtPDFEngine1.Free;
    end; }
end;

class procedure TJanuaLegacyApplication.PDFExport(Filename: String; Report: TQuickRep;
  aPrepared: boolean = True);
var
  pdfFilter: TQRPDFDocumentFilter;
begin
  // ExportToPDF(Report, Filename, True, False);
  // Export report to a PDF document
  // gtPDFEngine1.Filename := 'Filename';
  // gtPDFEngine1.Preferences.ShowSetupDialog := False;
  // gtQRExportInterface1.Engine := gtPDFEngine1;
  // gtQRExportInterface1.RenderDocument(Report, False);

  pdfFilter := TQRPDFDocumentFilter.Create(Filename);
  try
    Report.QRPrinter.ExportToFilter(pdfFilter);
  finally
    pdfFilter.Free;
  end;
  {
    gtQRExportInterface1.ShowProgress := False;
    gtQRExportInterface1.RenderDocument(Report, true);
  }
end;

end.
