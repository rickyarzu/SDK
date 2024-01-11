unit Janua.FMX.PhoenixMobile.frameSmokeDetectionSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Objects, FMX.TMSCustomButton, FMX.TMSSpeedButton, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCTrackBar,
  FMX.TMSFNCSpinEdit;

type
  TframeFMXPhoenixSmokeDetectionSetting = class(TFrame)
    Layout1: TLayout;
    lbStatoAtt: TLabel;
    cboequipmentState: TComboBox;
    Layout2: TLayout;
    rctMatr: TRectangle;
    lbControl: TLabel;
    lbControlDone: TLabel;
    lbSpace: TLabel;
    lbControlNotDone: TLabel;
    Label1: TLabel;
    Layout3: TLayout;
    txtControlType: TLabel;
    cbkControlDone: TCheckBox;
    ckbControlNotDone: TCheckBox;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    lbBrandStation: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Layout5: TLayout;
    Rectangle2: TRectangle;
    lbKindStation: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    lbDetectorTypes: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox3: TComboBox;
    lbNumberDetectors: TLabel;
    TMSFNCSpinEdit1: TTMSFNCSpinEdit;
    Layout7: TLayout;
    Rectangle4: TRectangle;
    lbBarrierTypes: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox4: TComboBox;
    TMSFNCSpinEdit2: TTMSFNCSpinEdit;
    Layout9: TLayout;
    Rectangle6: TRectangle;
    lbBarrierBrand: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox6: TComboBox;
    Layout8: TLayout;
    Rectangle5: TRectangle;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox5: TComboBox;
    TMSFNCSpinEdit3: TTMSFNCSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.Resources;

end.
