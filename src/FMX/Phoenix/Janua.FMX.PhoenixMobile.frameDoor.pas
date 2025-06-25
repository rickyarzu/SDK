unit Janua.FMX.PhoenixMobile.frameDoor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
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
  TframeFMXMobileDoor = class(TFrame)
    layMatr: TLayout;
    txtNR: TLabel;
    edMatrAnno: TLabel;
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
    lbMatr: TLabel;
    lbSpace: TLabel;
    lbIntervento: TLabel;
    Rectangle3: TRectangle;
    lbLocation: TLabel;
    Rectangle4: TRectangle;
    lbContr: TLabel;
    lbNonEseg: TLabel;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    procedure TMSFMXSpeedButton1Change(Sender: TObject);
  private
    FDoor: TPorte;
    procedure SetDoor(const Value: TPorte);
    { Private declarations }
  public
    { Public declarations }
    property Door: TPorte read FDoor write SetDoor;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.dmAppMobileController, Janua.FMX.PhoenixMobile.frmDoorSettings;

{ TFrame2 }

procedure TframeFMXMobileDoor.SetDoor(const Value: TPorte);
begin
  if FDoor <> Value then
  begin
    FDoor := Value;
    if Assigned(FDoor) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      txtNR.Text := FDoor.PROGRESSIVO.ToString;
      edMatrAnno.Text := FDoor.MATRICOLA + '/' + FDoor.ANNOCOSTRUZIONE.ToString;

      ckbContr.Checked := FDoor.Controllato;
      ckbNonEseg.Checked := FDoor.NonControllato;

      txtLocation.Text := FDoor.Ubicazione;

      memAnomalia.Text := FDoor.ANOMALIA;
      // FDoor.
    end;
  end;
end;

procedure TframeFMXMobileDoor.TMSFMXSpeedButton1Change(Sender: TObject);
begin
  var
  lFrm := TfrmFMXDoorSettings.Create(nil);
  try
    lFrm.frameFMXPhoenixMobileDoorSetting1.Door := self.FDoor;
    lFrm.ShowModal;
  finally
    lFrm.Free;
    lFrm := nil;
  end;
end;

end.
