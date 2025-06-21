unit Janua.FMX.PhoenixMobile.frameReportListSmokeDetection;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Janua.FMX.PhoenixMobile.frameReportListModel, FMX.Objects, FMX.TMSHTMLText, FMX.Layouts, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap;

type
  TframeFMXPhoenixReportListSmokeDetection = class(TframeFMXPhoenixReportListModel)
    laySelectInsertNew: TLayout;
    laySelect: TLayout;
    cboSelect: TComboBox;
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
    procedure Setup; override;
  end;

var
  frameFMXPhoenixReportListSmokeDetection: TframeFMXPhoenixReportListSmokeDetection;

implementation

{$R *.fmx}

{ TframeFMXPhoenixReportListSmokeDetection }

procedure TframeFMXPhoenixReportListSmokeDetection.Setup;
begin
  inherited;

end;

end.
