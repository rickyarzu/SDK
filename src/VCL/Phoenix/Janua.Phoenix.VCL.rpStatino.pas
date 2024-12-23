unit Janua.Phoenix.VCL.rpStatino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmRpStatino = class(TForm)
    qrpStatino: TQuickRep;
    TitleBand1: TQRBand;
    QR_LOGO: TQRImage;
    lbRapportoIntervento: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    lbManutenzione: TQRLabel;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PreviewReport;
    procedure ExportReportToPDF(const aFile: TFileName);
  end;

var
  frmRpStatino: TfrmRpStatino;

implementation

uses Janua.Core.Functions, ZQRPdfFilter, Janua.Phoenix.FbJsonReport;

// Procedure ExportToPdfQReport(AReport: TQuickRep; FileName: String; Exec: Boolean);

{$R *.dfm}
{ TfrmRpStatino }

procedure TfrmRpStatino.ExportReportToPDF(const aFile: TFileName);
begin
  ExportToPdfQReport(qrpStatino, aFile, True);
end;

procedure TfrmRpStatino.PreviewReport;
begin

end;

end.
