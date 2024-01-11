unit Janua.FMX.PhoenixMobile.frameEstinguisher;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.Controls.Presentation, FMX.TMSCustomButton, FMX.TMSSpeedButton, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCHTMLImageContainer,
  FMX.TMSFNCRadioButton, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TframeFMXMobileEstinguisher = class(TFrame)
    rctMatr: TRectangle;
    lbNR: TLabel;
    layMatr: TLayout;
    txtNR: TLabel;
    lbtMatrYear: TLabel;
    txMatrYear: TLabel;
    lbSpace: TLabel;
    lbIntervento: TLabel;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    txtIntervento: TLabel;
    Rectangle1: TRectangle;
    lbTipo: TLabel;
    Layout1: TLayout;
    txtTipo: TLabel;
    Rectangle2: TRectangle;
    lbProssRev: TLabel;
    lbProssColl: TLabel;
    lbAnnoSost: TLabel;
    Layout2: TLayout;
    lbProssReve: TLabel;
    txtProssColl: TLabel;
    txtAnnoSost: TLabel;
    Rectangle3: TRectangle;
    lbLocation: TLabel;
    Layout3: TLayout;
    txtLocation: TLabel;
    Layout4: TLayout;
    ckbEseg: TTMSFNCRadioButton;
    Rectangle4: TRectangle;
    lbExecuted: TLabel;
    lbRitir: TLabel;
    lbSmalt: TLabel;
    ckbRitir: TTMSFNCRadioButton;
    ckbSmalt: TTMSFNCRadioButton;
    lbNonEseg: TLabel;
    lbRest: TLabel;
    ckbRest: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    memAnomalia: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.Resources;

end.
