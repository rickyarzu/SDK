unit Janua.FMX.PhoenixMobile.frameFireHose;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.StrUtils,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.TMSFNCCustomControl, FMX.TMSFNCHTMLImageContainer, FMX.TMSFNCRadioButton, FMX.TMSCustomButton,
  FMX.TMSSpeedButton, FMX.Layouts, FMX.Controls.Presentation, FMX.Objects,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, Janua.REST.Client, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

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
    ckbCharging: TTMSFNCRadioButton;
    ckbTesting: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    ckbDisposal: TTMSFNCRadioButton;
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
    procedure ckbContrChange(Sender: TObject);
  private
    FIdrante: TIdranti;
    FBocchello: TBocchelli;
    procedure SetIdrante(const Value: TIdranti);
    procedure SetBocchello(const Value: TBocchelli);
    { Private declarations }
  public
    { Public declarations }
    property Idrante: TIdranti read FIdrante write SetIdrante;
    property Bocchello: TBocchelli read FBocchello write SetBocchello;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.dmAppMobileController;
{ TframeFMXMobileFireHose }

procedure TframeFMXMobileFireHose.ckbContrChange(Sender: TObject);
begin
  FBocchello.Controllato := ckbContr.Checked;
end;

procedure TframeFMXMobileFireHose.SetBocchello(const Value: TBocchelli);
begin
  FBocchello := Value;
  if FBocchello <> Value then
  begin
    if Assigned(FBocchello) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      txtNR.Text := FBocchello.IDBOCCHELLO.ToString;
      txtScadColl.Text := FBocchello.ANNOSTARTUP.ToString;
      if FBocchello.TIPOINTERVENTO = 'O' then
        txtIntervento.Text := 'Ordinario'
      else if FBocchello.TIPOINTERVENTO = 'C' then
        txtIntervento.Text := 'Collaudo';

      var
        sTipo: TTIPOBOCCHELLI := nil;
      var
      vTest := dm.FindBocchello(FBocchello.TIPOBOCCHELLO, sTipo);

      txtTipo.Text := IFThen(vTest, sTipo.Descrizione, '');

      txtLocation.Text := FBocchello.UBICAZIONE;
      ckbContr.Checked := FBocchello.Controllato;
      ckbCharging.Checked := FBocchello.PressaturaEffettuata;
      ckbTesting.Checked := FBocchello.Ritirato;
      ckbDisposal.Checked := FBocchello.DataRitiro <> 0.0;
      memAnomalia.Text := FBocchello.ANOMALIA;
      // FBocchello.
    end;
  end;
end;

procedure TframeFMXMobileFireHose.SetIdrante(const Value: TIdranti);
begin
  FIdrante := Value;
  if FIdrante <> Value then
  begin
    if Assigned(FIdrante) then
    begin
      // txtNR.Text := FIdrante.
    end;
  end;

end;

end.
