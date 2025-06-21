unit Janua.FMX.PhoenixMobile.frameReportListFireHoses;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Objects, FMX.ListBox, FMX.Ani, FMX.TMSBaseControl,
  FMX.TMSBitmap,
  // Janua
  Janua.FMX.PhoenixMobile.frameFireHose, Janua.FMX.PhoenixMobile.frameReportListModel,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, FMX.TMSHTMLText;

type
  TframeFMXReportListFireHoses = class(TframeFMXPhoenixReportListModel)
    btnReportTestFirehose: TButton;
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
    laySelectInsertNew: TLayout;
    laySelect: TLayout;
    cboSelect: TComboBox;
    layInsertNew: TLayout;
    imgInsertNew: TTMSFMXImage;
    BitmapAnimation13: TBitmapAnimation;
    BitmapAnimation14: TBitmapAnimation;
    BitmapAnimation15: TBitmapAnimation;
    lbInsertNew: TLabel;
  private
    FStatino: TStatino;
    FFireHoses: TObjectList<TframeFMXMobileFireHose>;
    procedure SetFireHoses(const Value: TObjectList<TframeFMXMobileFireHose>);
  protected
    procedure SetupIdrante(const aIdrante: TIdranti);
  public
    property FireHoses: TObjectList<TframeFMXMobileFireHose> read FFireHoses write SetFireHoses;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Setup; override;
  end;

implementation

{$R *.fmx}
{ TframeFMXReportListFireHoses }

constructor TframeFMXReportListFireHoses.Create(AOwner: TComponent);
begin
  inherited;
  FFireHoses := TObjectList<TframeFMXMobileFireHose>.Create
end;

destructor TframeFMXReportListFireHoses.Destroy;
begin
  try
    FFireHoses.Free;
  finally
    inherited;
  end;
end;

procedure TframeFMXReportListFireHoses.SetFireHoses(const Value: TObjectList<TframeFMXMobileFireHose>);
begin
  FFireHoses := Value;
end;

procedure TframeFMXReportListFireHoses.Setup;
begin
  inherited;

  var
  lCount := FStatino.Idranti.Count;

  if lCount > 0 then
  begin
    cboSelect.Items.Clear;
    for var I := 0 to lCount - 1 do
      cboSelect.Items.AddObject(FStatino.Idranti[I].Descrizione, FStatino.Idranti[I]);

    SetupIdrante(FStatino.Idranti[0]);
  end;
end;

procedure TframeFMXReportListFireHoses.SetupIdrante(const aIdrante: TIdranti);
begin
  var
  lCount := aIdrante.Bocchelli.Count;

  if FFireHoses.Count > 0 then
    for var I := FFireHoses.Count downto 0 do
      FFireHoses[I].Free;

  FFireHoses.Clear;

  if lCount > 0 then
  begin
    var
    lTop := btnReportTestFirehose.Height + btnReportTestFirehose.Position.Y + 1;
    if lCount > 0 then
    begin

      for var I := 0 to lCount - 1 do
      begin
        var
        aFrame := TframeFMXMobileFireHose.Create(self);
        aFrame.Name := 'frameFireHose' + I.ToString;
        FFireHoses.Add(aFrame);
        aFrame.Align := TAlignLayout.Top;
        aFrame.Position.Y := lTop;
        lTop := lTop + aFrame.Height;
        aFrame.Bocchello := aIdrante.Bocchelli[I];
        aFrame.Parent := self.VertScBox;
        aFrame.Visible := True;
      end
    end;
  end;
end;

end.
