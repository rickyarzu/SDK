unit uVCLGnosticeReportEngine;

interface

uses
  System.SysUtils, System.Classes, gtCstSpdEng, gtCstXLSEng, gtExXLSEng, gtXLSEng, gtClasses3, gtCstDocEng,
  gtCstPlnEng, gtCstPDFEng, gtExPDFEng, gtPDFEng, gtXportIntf, gtQRXportIntf, gtBMPEng, gtMetafileEng,
  gtWMFEng, gtGIFEng, gtSVGEng, gtCstXLS95Eng, gtExXLS95Eng, gtXLS95Eng, gtCstGfxEng, gtPNGEng, gtTXTEng,
  gtCstHTMLEng, gtExHTMLEng, gtHTMLEng;

type
  TdmVCLGnosticeReportEngine = class(TDataModule)
    gtPDFEngine1: TgtPDFEngine;
    gtExcelEngine1: TgtExcelEngine;
    gtHTMLEngine1: TgtHTMLEngine;
    gtTextEngine1: TgtTextEngine;
    gtDocSettings1: TgtDocSettings;
    gtPNGEngine1: TgtPNGEngine;
    gtHTMLEngine2: TgtHTMLEngine;
    gtXLSEngine1: TgtXLSEngine;
    gtSVGEngine1: TgtSVGEngine;
    gtGIFEngine1: TgtGIFEngine;
    gtWMFEngine1: TgtWMFEngine;
    gtBMPEngine1: TgtBMPEngine;
    gtQRExportInterface1: TgtQRExportInterface;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLGnosticeReportEngine: TdmVCLGnosticeReportEngine;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
