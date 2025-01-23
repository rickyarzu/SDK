unit ufrmTestImageResize;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, Janua.FMX.frameFNCBlox,
  FMX.Controls.Presentation,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCBloxCoreTypes,
  FMX.TMSFNCBloxCoreUtils, FMX.TMSFNCBloxCoreLine, FMX.TMSFNCBloxCorePolygon, FMX.TMSFNCBloxCoreTextCell,
  FMX.TMSFNCBloxCoreLineArrow, FMX.TMSFNCBloxCoreLinkPoint, FMX.TMSFNCBloxCoreHandle, FMX.TMSFNCBloxCoreGroup,
  FMX.TMSFNCBloxUISnapGrid, FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement, FMX.TMSFNCBloxUIRegistration,
  FMX.TMSFNCBloxUIRenderer, FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl,
  FMX.TMSBaseControl, FMX.TMSMemo, FMX.TMSMemoStyles;

type
  TfrmFXMTestImageResize = class(TForm)
    ImageControl1: TImageControl;
    frameFNCBloxDrawing1: TframeFNCBloxDrawing;
    btnTestImage: TButton;
    TMSFMXMemoXMLStyler1: TTMSFMXMemoXMLStyler;
    TMSFMXMemo1: TTMSFMXMemo;
    procedure btnTestImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFXMTestImageResize: TfrmFXMTestImageResize;

implementation

{$R *.fmx}

procedure TfrmFXMTestImageResize.btnTestImageClick(Sender: TObject);
var
 lBitmap: TTMSFNCBitmap;
begin
  var
  aBitmap := ImageControl1.Bitmap;
  var
  tmpBitmap := TBitmap.Create;

  var
  aStream := TMemoryStream.Create;
  try
    aBitmap.SaveToStream(aStream);
    tmpBitmap.LoadFromStream(aStream);
    frameFNCBloxDrawing1.TMSFNCBloxControl1.Fill.Texture.LoadFromSVG(TMSFMXMemo1.Lines.Text);
    //frameFNCBloxDrawing1.TMSFNCBloxControl1.Fill.Texture.Canvas.LoadFontFromStream(aStream);
    //frameFNCBloxDrawing1.TMSFNCBloxControl1.Fill.Texture.Canvas.EndScene;
  finally
    aStream.Free;
  end;

end;

end.
