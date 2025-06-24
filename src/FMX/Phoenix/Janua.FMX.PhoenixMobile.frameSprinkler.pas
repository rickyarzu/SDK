unit Janua.FMX.PhoenixMobile.frameSprinkler;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Math, System.StrUtils,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.Objects, FMX.TMSFNCCustomControl,
  FMX.TMSFNCHTMLImageContainer, FMX.TMSFNCRadioButton, FMX.TMSCustomButton, FMX.TMSSpeedButton,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Edit,
  // Janua
  Janua.REST.Client,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXMobileSprinkler = class(TFrame)
    layMatr: TLayout;
    txtCheckType: TLabel;
    btnCheckList: TTMSFMXSpeedButton;
    ly04Brand: TLayout;
    ly04Model: TLayout;
    rctMatr: TRectangle;
    lbCheck: TLabel;
    lbSpace: TLabel;
    lbCheckList: TLabel;
    Rectangle3: TRectangle;
    lbBrand: TLabel;
    Rectangle4: TRectangle;
    lbModel: TLabel;
    Rectangle5: TRectangle;
    lbTipoImpianto: TLabel;
    lbContr: TLabel;
    Label1: TLabel;
    ckbChecked: TTMSFNCRadioButton;
    ckbNotChecked: TTMSFNCRadioButton;
    ly02State: TLayout;
    lbState: TLabel;
    layStateSelect: TLayout;
    cboStateSelect: TComboBox;
    cboBrand: TComboBox;
    edModel: TEdit;
    ly05Type: TLayout;
    cboSprinklerSystemType: TComboBox;
    Rectangle1: TRectangle;
    lbQty: TLabel;
    ly06QtyType: TLayout;
    edQtyType: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    TMSFNCRadioButton1: TTMSFNCRadioButton;
    edCalibration: TEdit;
    Rectangle2: TRectangle;
    Label5: TLabel;
    ly07Compressor: TLayout;
    edCompressor: TEdit;
    Rectangle6: TRectangle;
    lbLocation: TLabel;
    ly08Location: TLayout;
    edLocation: TEdit;
    Rectangle7: TRectangle;
    lbAnomaly: TLabel;
    ly09Anomaly: TLayout;
    edAnomaly: TEdit;
    procedure cboStateSelectClosePopup(Sender: TObject);
    procedure cboSprinklerSystemTypeClosePopup(Sender: TObject);
    procedure ckbCheckedClick(Sender: TObject);
    procedure ckbNotCheckedClick(Sender: TObject);
  private
    FSprinkler: TSprinkler;
    FUpdating: Boolean;
    procedure SetSprinkler(const Value: TSprinkler);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    property Sprinkler: TSprinkler read FSprinkler write SetSprinkler;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeFMXMobileSprinkler }

procedure TframeFMXMobileSprinkler.cboSprinklerSystemTypeClosePopup(Sender: TObject);
begin
  FSprinkler.TIPO := // Elaborazione tipo Sprinkler oggetto
    TMARCHESPRINKLER(cboSprinklerSystemType.Items.Objects[cboSprinklerSystemType.ItemIndex]).Chiave.ToString;
end;

procedure TframeFMXMobileSprinkler.cboStateSelectClosePopup(Sender: TObject);
begin
  FSprinkler.MARCA := TMARCHESPRINKLER(cboBrand.Items.Objects[cboBrand.ItemIndex]).Chiave.ToString;
end;

procedure TframeFMXMobileSprinkler.ckbCheckedClick(Sender: TObject);
begin
  FSprinkler.Controllato := ckbChecked.Checked;
  FSprinkler.NonControllato := not ckbNotChecked.Checked;
  if FSprinkler.Controllato then
    FSprinkler.DataControllo := Date();

end;

procedure TframeFMXMobileSprinkler.ckbNotCheckedClick(Sender: TObject);
begin
  FSprinkler.NonControllato := ckbNotChecked.Checked;
  FSprinkler.Controllato := not FSprinkler.NonControllato;
  ckbChecked.Checked := FSprinkler.Controllato;
end;

constructor TframeFMXMobileSprinkler.Create(AOwner: TComponent);
begin
  inherited;
  FUpdating := False;
end;

procedure TframeFMXMobileSprinkler.SetSprinkler(const Value: TSprinkler);
begin
  if FSprinkler <> Value then
  begin
    FSprinkler := Value;

    cboStateSelect.ItemIndex := IfThen(FSprinkler.STATO = 'A', 0, 1);

    var
    dm := dmFMXPhoenixAppMobileController;

    for var lMarca in dm.Conf.MarcheSprinkler do
    begin
      cboBrand.Items.AddObject(lMarca.Descrizione, lMarca);
      if lMarca.Chiave = FSprinkler.MARCA.ToInteger() then
        cboBrand.ItemIndex := cboBrand.Items.Count - 1;
    end;

    edModel.Text := FSprinkler.MODELLO;

    // cboSprinklerSystemType

    for var lSysType in dm.Conf.TIPISPRINKLER do
    begin
      cboSprinklerSystemType.Items.AddObject(lSysType.Descrizione, lSysType);
      if lSysType.Chiave = FSprinkler.TIPO.ToInteger() then
        cboSprinklerSystemType.ItemIndex := cboSprinklerSystemType.Items.Count - 1;
    end;

    edQtyType.Text := FSprinkler.QUANTITAVALVOLE;

    edCalibration.Text := FSprinkler.TARATURAVALVOLE.ToString();

    if FSprinkler.TIPOVISITA = 'T' then
      txtCheckType.Text := 'CONTROLLO TRIMESTRALE'
    else if FSprinkler.TIPOVISITA = 'M' then
      txtCheckType.Text := 'CONTROLLO MENSILE'
    else if FSprinkler.TIPOVISITA = 'S' then
      txtCheckType.Text := 'CONTROLLO SEMESTRALE';

    ckbChecked.Checked := FSprinkler.Controllato;
    ckbNotChecked.Checked := FSprinkler.NonControllato;
    edCompressor.Text := FSprinkler.COMPRESSORE;
    edLocation.Text := FSprinkler.UBICAZIONE;
    edAnomaly.Text := FSprinkler.AnomaliaOnDownload;
  end;
end;

end.
