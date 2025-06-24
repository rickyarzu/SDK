unit Janua.FMX.PhoenixMobile.frameLight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.Memo.Types, FMX.Objects, FMX.ScrollBox,
  FMX.Memo, FMX.TMSFNCCustomControl, FMX.TMSFNCHTMLImageContainer, FMX.TMSFNCRadioButton, FMX.TMSCustomButton,
  FMX.TMSSpeedButton, FMX.Controls.Presentation, FMX.Layouts,
  // Janua
  Janua.REST.Client,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXMobileLight = class(TFrame)
    layMatr: TLayout;
    txtNR: TLabel;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    txtIntervento: TLabel;
    Layout3: TLayout;
    txtLocation: TLabel;
    Layout4: TLayout;
    ckbContr: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    memAnomalia: TMemo;
    rctMatr: TRectangle;
    lbNR: TLabel;
    lbSpace: TLabel;
    lbIntervento: TLabel;
    Rectangle3: TRectangle;
    lbLocation: TLabel;
    Rectangle4: TRectangle;
    lbContr: TLabel;
    lbNonEseg: TLabel;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    btnCheckList: TTMSFMXSpeedButton;
  private
    FLight: TLuci;
    procedure SetLight(const Value: TLuci);
    { Private declarations }
  public
    { Public declarations }
    property Light: TLuci read FLight write SetLight;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeFMXMobileLight }

procedure TframeFMXMobileLight.SetLight(const Value: TLuci);
begin
  if FLight <> Value then
  begin
    FLight := Value;
    if Assigned(FLight) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      txtNR.Text := FLight.PROGRESSIVO.ToString;

      ckbContr.Checked := FLight.Controllato;
      ckbNonEseg.Checked := FLight.NonControllato;

      txtLocation.Text := FLight.Ubicazione;

      memAnomalia.Text := FLight.ANOMALIA;
      // FLight.
    end;
  end;

end;

end.
