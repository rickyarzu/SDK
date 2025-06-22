unit Janua.FMX.PhoenixMobile.frameReportItem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Objects, FMX.Layouts, FMX.TMSBitmapContainer, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap,
  // Janua
  DTO.Phoenix.ReportList;

type
  TframeReportItem = class(TFrame)
    Rectangle1: TRectangle;
    lbAdministrator: TLabel;
    lbRagioneSociale: TLabel;
    lbAddress: TLabel;
    lbEstinguishers: TLabel;
    Layout1: TLayout;
    btnGoogleMaps: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    btnPhone: TTMSFMXImage;
    BitmapAnimation4: TBitmapAnimation;
    BitmapAnimation5: TBitmapAnimation;
    BitmapAnimation6: TBitmapAnimation;
    procedure NotifyClick(Sender: TObject);
  private
    FStatino: TLSStatino;
    FOnItemClick: TNotifyEvent;
    FClicked: Boolean;
    procedure SetStatino(const Value: TLSStatino);
    procedure SetOnItemClick(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property Statino: TLSStatino read FStatino write SetStatino;
    property OnItemClick: TNotifyEvent read FOnItemClick write SetOnItemClick;
  end;

implementation

{$R *.fmx}

uses System.StrUtils, Janua.FMX.PhoenixMobile.Resources, Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeReportItem }

constructor TframeReportItem.Create(AOwner: TComponent);
begin
  inherited;
  FClicked := False;
end;

procedure TframeReportItem.NotifyClick(Sender: TObject);
begin
  if Assigned(FStatino) and not FClicked then
    try
      FClicked := True;
      dmFMXPhoenixAppMobileController.SelectedRow := FStatino;
      dmFMXPhoenixAppMobileController.OpenStatino(FStatino.CHIAVE);
      if Assigned(FOnItemClick) then
        FOnItemClick(self);
    finally
      FClicked := False;
    end;
end;

procedure TframeReportItem.SetOnItemClick(const Value: TNotifyEvent);
begin
  FOnItemClick := Value;
end;

procedure TframeReportItem.SetStatino(const Value: TLSStatino);
begin
  FClicked := False;
  FStatino := Value;
  if Assigned(FStatino) then
  begin

    lbAdministrator.Text := FStatino.AMMINISTRATORE;

    lbRagioneSociale.Text := 'CONTRATTO:' + FStatino.RagioneSociale;
    lbAddress.Text := FStatino.INDIRIZZO;
    var
    lText := '';

    var
    lTest1 := FStatino.ESTINTORIORDINARIO;
    lText := lText + IfThen(lTest1 > 0, 'Estintori Ordinari: ' + lTest1.ToString, '');
    var
    lTest := FStatino.ESTINTORISTRAORDINARIO;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', 'Estintori') + ', Straordinari: ' +
      lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.FUMI;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', Ril. Incendi: ' +
      lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.GRUPPIELETTR;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', G.P.A. : ' +
      lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.IDRANTI;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', Idranti: ' + lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.LUCI;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', Luci: ' + lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.SPRINKLER;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', Sprinkler: ' + lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lTest := FStatino.PORTE;
    lText := lText + IfThen(lTest > 0, IfThen(lTest1 > 0, '', ' - ') + ', Porte: ' + lTest.ToString, '');
    lTest1 := lTest1 + lTest;

    lbEstinguishers.Text := lText;
  end;
end;

end.
