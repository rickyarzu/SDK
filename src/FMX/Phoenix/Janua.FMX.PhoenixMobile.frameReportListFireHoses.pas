unit Janua.FMX.PhoenixMobile.frameReportListFireHoses;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Objects, FMX.ListBox, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap;

type
  TframeFMXReportListFireHoses = class(TFrame)
    Layout1: TLayout;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    lbBranch: TLabel;
    laySelectInsertNew: TLayout;
    laySelect: TLayout;
    layInsertNew: TLayout;
    cboSelect: TComboBox;
    imgInsertNew: TTMSFMXImage;
    BitmapAnimation13: TBitmapAnimation;
    BitmapAnimation14: TBitmapAnimation;
    BitmapAnimation15: TBitmapAnimation;
    lbInsertNew: TLabel;
    btnSpecificaImpianto: TButton;
    btnVerbale: TButton;
    Layout5: TLayout;
    Layout7: TLayout;
    TMSFMXImage1: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    Label1: TLabel;
    Layout6: TLayout;
    Rectangle1: TRectangle;
    lbManichette: TLabel;
    btnReportTestFirehose: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
