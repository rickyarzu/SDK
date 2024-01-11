unit JanuaWebExportPDF;

interface

uses
  SysUtils, Classes, gtQRRtns, QuickRpt;

type
  TJanuaWebExportPDF = class(TComponent)
  private
    Fpopup_page_options: string;
    Fpopup_page_name: string;
    Freport: TQuickRep;
    Fpdf_file_name: string;
    Fpdf_url: string;
   // FForm: TIWForm;
    procedure Setpdf_file_name(const Value: string);
    procedure Setpdf_url(const Value: string);
    procedure Setpopup_page_name(const Value: string);
    procedure Setpopup_page_options(const Value: string);
    procedure Setreport(const Value: TQuickRep);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure ExportWWW;
  published
      property pdf_file_name: string read Fpdf_file_name write Setpdf_file_name;
      property popup_page_name: string read Fpopup_page_name write Setpopup_page_name;
      property popup_page_options: string read Fpopup_page_options write Setpopup_page_options;
      property pdf_url: string read Fpdf_url write Setpdf_url;
      property  report: TQuickRep read Freport write Setreport;
     // property Form: TIWForm read FForm write SetForm;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaWebExportPDF]);
end;

{ TJanuaWebExportPDF }

procedure TJanuaWebExportPDF.ExportWWW;
begin
{
    Fpdf_file_name:= UserSession.qryWebOrdersANAGRAPH_ID.AsString +  '_Report.pdf';
    Fpopup_page_name:= 'the_report';
    Fpopup_page_options:= 'scrollbars=yes,width=400,height=600';
}
    Fpdf_url:= 'http://booking.januaproject.it/scripts/' + 'report/'+ Fpdf_file_name;
    Freport.Prepare;
    ExportToPDF(Freport, 'c:\januaproject\www\isapi\report\' + Fpdf_file_name, True, False);

 {   FForm.AddToInitProc('NewWindow("'
        + Fpdf_url
        + '","'+ Fpopup_page_name
        + '","'+ Fpopup_page_options
        + '");'); }
end;



procedure TJanuaWebExportPDF.Setpdf_file_name(const Value: string);
begin
  Fpdf_file_name := Value;
end;

procedure TJanuaWebExportPDF.Setpdf_url(const Value: string);
begin
  Fpdf_url := Value;
end;

procedure TJanuaWebExportPDF.Setpopup_page_name(const Value: string);
begin
  Fpopup_page_name := Value;
end;

procedure TJanuaWebExportPDF.Setpopup_page_options(const Value: string);
begin
  Fpopup_page_options := Value;
end;

procedure TJanuaWebExportPDF.Setreport(const Value: TQuickRep);
begin
  Freport := Value;
end;

end.
