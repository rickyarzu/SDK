unit Janua.FMX.PhoenixMobile.frameSmokeDetection;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Objects, FMX.TMSCustomButton, FMX.TMSSpeedButton, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCTrackBar,
  FMX.TMSFNCSpinEdit,
  // Janua
  Janua.REST.Client,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixSmokeDetection = class(TFrame)
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
    cboMarcaCentrale: TComboBox;
    Layout5: TLayout;
    Rectangle2: TRectangle;
    lbKindStation: TLabel;
    cboTipoCentrale: TComboBox;
    Layout6: TLayout;
    Rectangle3: TRectangle;
    lbDetectorTypes: TLabel;
    ComboBox3: TComboBox;
    lbNumberDetectors: TLabel;
    TMSFNCSpinEdit1: TTMSFNCSpinEdit;
    Layout7: TLayout;
    Rectangle4: TRectangle;
    lbBarrierTypes: TLabel;
    Label11: TLabel;
    ComboBox4: TComboBox;
    TMSFNCSpinEdit2: TTMSFNCSpinEdit;
    Layout9: TLayout;
    Rectangle6: TRectangle;
    lbBarrierBrand: TLabel;
    ComboBox6: TComboBox;
    Layout8: TLayout;
    Rectangle5: TRectangle;
    Label2: TLabel;
    Label14: TLabel;
    ComboBox5: TComboBox;
    TMSFNCSpinEdit3: TTMSFNCSpinEdit;
  private
    FFireDetector: TRilevatoriFumo;
    procedure SetFireDetector(const Value: TRilevatoriFumo);
    { Private declarations }
  public
    property FireDetector: TRilevatoriFumo read FFireDetector write SetFireDetector;
  end;

implementation

{$R *.fmx}

uses System.StrUtils, System.Math, Janua.FMX.PhoenixMobile.Resources,
  Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeFMXPhoenixSmokeDetection }

procedure TframeFMXPhoenixSmokeDetection.SetFireDetector(const Value: TRilevatoriFumo);
begin
  if FFireDetector <> Value then
  begin
    FFireDetector := Value;
    if Assigned(FFireDetector) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      var
      lOrdinario := FFireDetector.TIPOINTERVENTO = 'O';
      var
      lCollaudo := FFireDetector.TIPOINTERVENTO = 'C';

      if lOrdinario then
        txtControlType.Text := 'Ordinario'
      else if lCollaudo then
        txtControlType.Text := 'Collaudo';

      cboequipmentState.ItemIndex := IfThen(FFireDetector.STATO = 'A', 0, 1);

      // cboMarcaCentrale
      for var lSysType in dm.Conf.MARCHECENTRALIFUMI do
      begin
        cboMarcaCentrale.Items.AddObject(lSysType.Descrizione, lSysType);
        if lSysType.Chiave = FFireDetector.MARCACENTRALE.ToInteger() then
          cboMarcaCentrale.ItemIndex := cboMarcaCentrale.Items.Count - 1;
      end;

      // cboTipoCentrale
      for var lSysType in dm.Conf.TIPICENTRALIFUMI do
      begin
        cboTipoCentrale.Items.AddObject(lSysType.Descrizione, lSysType);
        if lSysType.Chiave = FFireDetector.TIPOCENTRALE.ToInteger() then
          cboTipoCentrale.ItemIndex := cboTipoCentrale.Items.Count - 1;
      end;

      // cboTipoCentrale
      for var lSysType in dm.Conf.TIPICENTRALIFUMI do
      begin
        cboTipoCentrale.Items.AddObject(lSysType.Descrizione, lSysType);
        if lSysType.Chiave = FFireDetector.TIPOCENTRALE.ToInteger() then
          cboTipoCentrale.ItemIndex := cboTipoCentrale.Items.Count - 1;
      end;

      cbkControlDone.IsChecked := FFireDetector.Controllato;
      ckbControlNotDone.IsChecked := FFireDetector.NonControllato;
    end;
  end;
end;

end.
