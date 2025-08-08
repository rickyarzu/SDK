unit Janua.FMX.PhoenixMobile.frameReportListSmokeDetection;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Janua.FMX.PhoenixMobile.frameReportListModel, FMX.Objects, FMX.TMSHTMLText, FMX.Layouts, FMX.ListBox,
  FMX.Controls.Presentation, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap,
  // Frame
  Janua.FMX.PhoenixMobile.frameSmokeDetection,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixReportListSmokeDetection = class(TframeFMXPhoenixReportListModel)
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
    FSmokeDetectors: TObjectList<TframeFMXPhoenixSmokeDetection>;
    FSmokeDetectorFrame: TframeFMXPhoenixSmokeDetection;
    procedure SetSmokeDetectors(const Value: TObjectList<TframeFMXPhoenixSmokeDetection>);
    procedure SetSmokeDetectorFrame(const Value: TframeFMXPhoenixSmokeDetection);
  protected
    procedure SetupDetector(const aDetector: TRilevatoriFumo); virtual;
  public
    property SmokeDetectorFrame: TframeFMXPhoenixSmokeDetection read FSmokeDetectorFrame
      write SetSmokeDetectorFrame;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Setup; override;
  end;

var
  frameFMXPhoenixReportListSmokeDetection: TframeFMXPhoenixReportListSmokeDetection;

implementation

{$R *.fmx}

uses System.StrUtils, System.Math, Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeFMXPhoenixReportListSmokeDetection }

constructor TframeFMXPhoenixReportListSmokeDetection.Create(AOwner: TComponent);
begin
  inherited;
  FSmokeDetectors := TObjectList<TframeFMXPhoenixSmokeDetection>.Create;
end;

destructor TframeFMXPhoenixReportListSmokeDetection.Destroy;
begin
  FSmokeDetectors.Free;
  inherited;
end;

procedure TframeFMXPhoenixReportListSmokeDetection.SetSmokeDetectorFrame
  (const Value: TframeFMXPhoenixSmokeDetection);
begin
  FSmokeDetectorFrame := Value;
end;

procedure TframeFMXPhoenixReportListSmokeDetection.SetSmokeDetectors
  (const Value: TObjectList<TframeFMXPhoenixSmokeDetection>);
begin
  FSmokeDetectors.Free;
end;

procedure TframeFMXPhoenixReportListSmokeDetection.Setup;
begin
  inherited;

  // FRilevatoriFumo: TObjectList<TRilevatoriFumo>;

  var
  lCount := FStatino.RilevatoriFumo.Count;

  if lCount > 0 then
  begin
    cboSelect.Items.Clear;
    for var I := 0 to lCount - 1 do
      cboSelect.Items.AddObject(FStatino.RilevatoriFumo[I].Descrizione, FStatino.RilevatoriFumo[I]);

    if FStatino.RilevatoriFumo.Count > 0 then
    begin
      cboSelect.ItemIndex := 0;
      SetupDetector(FStatino.RilevatoriFumo[0]);
    end;
  end;

end;

procedure TframeFMXPhoenixReportListSmokeDetection.SetupDetector(const aDetector: TRilevatoriFumo);
begin
  if Assigned(FSmokeDetectorFrame) then
    FreeAndNil(FSmokeDetectorFrame);

  FSmokeDetectors.Clear;

  var
  lTop := laySelectInsertNew.Height + laySelectInsertNew.Position.Y + 1;

  FSmokeDetectorFrame := TframeFMXPhoenixSmokeDetection.Create(self);
  FSmokeDetectorFrame.Name := 'frameFMXPhoenixSmokeDetection' + 1.ToString;
  FSmokeDetectors.Add(FSmokeDetectorFrame);
  FSmokeDetectorFrame.Align := TAlignLayout.Top;
  FSmokeDetectorFrame.Position.Y := lTop;
  lTop := lTop + FSmokeDetectorFrame.Height;
  FSmokeDetectorFrame.FireDetector := aDetector;
  FSmokeDetectorFrame.Parent := VertScBox;
  FSmokeDetectorFrame.Visible := True;

end;

end.
