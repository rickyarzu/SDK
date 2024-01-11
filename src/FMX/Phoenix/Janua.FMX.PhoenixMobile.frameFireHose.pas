unit Janua.FMX.PhoenixMobile.frameFireHose;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.TMSFNCCustomControl, FMX.TMSFNCHTMLImageContainer, FMX.TMSFNCRadioButton, FMX.TMSCustomButton,
  FMX.TMSSpeedButton, FMX.Layouts, FMX.Controls.Presentation, FMX.Objects;

type
  TframeFMXMobileFireHose = class(TFrame)
    rctMatr: TRectangle;
    lbNR: TLabel;
    lbScadColl: TLabel;
    lbSpace: TLabel;
    lbIntervento: TLabel;
    layMatr: TLayout;
    txtNR: TLabel;
    txtScadColl: TLabel;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    txtIntervento: TLabel;
    Rectangle1: TRectangle;
    lbTipo: TLabel;
    Layout1: TLayout;
    txtTipo: TLabel;
    Rectangle3: TRectangle;
    lbLocation: TLabel;
    Layout3: TLayout;
    txtLocation: TLabel;
    Layout4: TLayout;
    ckbContr: TTMSFNCRadioButton;
    ckbRitir: TTMSFNCRadioButton;
    ckbSmalt: TTMSFNCRadioButton;
    ckbSmaltim: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    Rectangle4: TRectangle;
    lbContr: TLabel;
    lbPress: TLabel;
    lbColl: TLabel;
    lbNonEseg: TLabel;
    lbSmaltim: TLabel;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    memAnomalia: TMemo;
    Layout2: TLayout;
    lbDataPressatura: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
