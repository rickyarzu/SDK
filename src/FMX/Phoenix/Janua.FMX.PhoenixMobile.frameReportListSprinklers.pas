unit Janua.FMX.PhoenixMobile.frameReportListSprinklers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Janua.FMX.PhoenixMobile.frameReportListModel, FMX.Objects, FMX.TMSHTMLText, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap;

type
  TframeFMXPhoenixReportListSprinklers = class(TframeFMXPhoenixReportListModel)
    laySelectInsertNew: TLayout;
    laySelect: TLayout;
    TMSFMXImage1: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    lbSearch: TLabel;
    layInsertNew: TLayout;
    imgInsertNew: TTMSFMXImage;
    BitmapAnimation13: TBitmapAnimation;
    BitmapAnimation14: TBitmapAnimation;
    BitmapAnimation15: TBitmapAnimation;
    lbInsertNew: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameFMXPhoenixReportListSprinklers: TframeFMXPhoenixReportListSprinklers;

implementation

{$R *.fmx}

end.
