unit Janua.FMX.PhoenixMobile.frameReportItem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Objects, FMX.Layouts, FMX.TMSBitmapContainer, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap;

type
  TframeReportItem = class(TFrame)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    lbAddress: TLabel;
    lbEstinguishers: TLabel;
    Label3: TLabel;
    lbDoors: TLabel;
    Layout1: TLayout;
    btnGoogleMaps: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    btnPhone: TTMSFMXImage;
    BitmapAnimation4: TBitmapAnimation;
    BitmapAnimation5: TBitmapAnimation;
    BitmapAnimation6: TBitmapAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.Resources;

end.
