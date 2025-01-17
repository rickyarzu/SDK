unit Janua.VCL.DummyTestComponent;

interface

uses
  // Quick Report
  QuickRpt, QRPDFFilt,
  // Indy
  IdcoderMIME, System.AnsiStrings,
  // VCL
  VCL.Forms, VCL.Controls, VCL.Mask, VCL.ComCtrls, VCL.StdCtrls, VCL.Dialogs, VCL.Graphics,
  VCL.Imaging.pngimage, VCL.ExtCtrls, VCL.ExtDlgs,
  // Janua
  Janua.VCL.Functions, udmSVGImageList, udmVCLMainApplication, Janua.Core.Classes, Janua.Core.CustomControls,
  // Gnostice
  gtCstSpdEng, gtCstXLSEng, gtExXLSEng, gtXLSEng, gtClasses3, gtCstDocEng,
  gtCstPlnEng, gtCstPDFEng, gtExPDFEng, gtPDFEng, gtXportIntf, gtQRXportIntf, gtBMPEng, gtMetafileEng,
  gtWMFEng, gtGIFEng, gtSVGEng, gtCstXLS95Eng, gtExXLS95Eng, gtXLS95Eng, gtCstGfxEng, gtPNGEng, gtTXTEng,
  gtCstHTMLEng, gtExHTMLEng, gtHTMLEng,
  // JEDI VCL
  JvToolEdit, JvExControls, JvSpeedButton,
  // TMS
  Shader, AdvOfficeButtons, AdvStyleIF,
  // Ethea
  FVCLThemeSelector,
  // SVG
  System.ImageList, VCL.ImgList, SVGIconImageList, SVGIconImageListBase, SVGIconImage,

  System.Classes;

type
  TDummyVCLComponent = class(TComponent)

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua Legacy VCL', [TDummyVCLComponent]);
end;

end.
