unit Janua.FMX.PhoenixMobile.frameReportListEstinguishers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Janua.FMX.PhoenixMobile.frameReportListModel, FMX.Objects, FMX.TMSHTMLText, FMX.Layouts,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, Janua.FMX.PhoenixMobile.frameEstinguisher,
  Janua.FMX.PhoenixMobile.frameEstinguisherSettings, FMX.Controls.Presentation, FMX.Ani, FMX.TMSBaseControl,
  FMX.TMSBitmap;

type
  TframeFMXPhoenixReportListEstinguishers = class(TframeFMXPhoenixReportListModel)
    laySelectInsertNew: TLayout;
    laySelect: TLayout;
    layInsertNew: TLayout;
    imgInsertNew: TTMSFMXImage;
    BitmapAnimation13: TBitmapAnimation;
    BitmapAnimation14: TBitmapAnimation;
    BitmapAnimation15: TBitmapAnimation;
    lbInsertNew: TLabel;
    TMSFMXImage1: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    lbSearch: TLabel;
    procedure TMSFMXImage1Click(Sender: TObject);
  private
    FEstinguishers: TObjectList<TframeFMXMobileEstinguisher>;
    procedure SetEstinguishers(const Value: TObjectList<TframeFMXMobileEstinguisher>);
    { Private declarations }
  public
    { Public declarations }
    property Estinguishers: TObjectList<TframeFMXMobileEstinguisher> read FEstinguishers
      write SetEstinguishers;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Setup;
  end;

var
  frameFMXPhoenixReportListEstinguishers: TframeFMXPhoenixReportListEstinguishers;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.dmAppMobileController, Janua.FMX.PhoenixMobile.dlgInputSearch;

{ TframeFMXPhoenixReportListEstinguishers }

constructor TframeFMXPhoenixReportListEstinguishers.Create(AOwner: TComponent);
begin
  inherited;
  FEstinguishers := TObjectList<TframeFMXMobileEstinguisher>.Create;
end;

destructor TframeFMXPhoenixReportListEstinguishers.Destroy;
begin
  FEstinguishers.Free;
  inherited;
end;

procedure TframeFMXPhoenixReportListEstinguishers.SetEstinguishers
  (const Value: TObjectList<TframeFMXMobileEstinguisher>);
begin
  FEstinguishers := Value;
end;

procedure TframeFMXPhoenixReportListEstinguishers.Setup;
begin
  inherited;
  var
  lCount := FStatino.Estintori.Count;
  var
  lTop := rcReportSummary.Height + rcReportSummary.Position.Y + 1;
  if lCount > 0 then
  begin
    if FEstinguishers.Count > 0 then
      for var I := FEstinguishers.Count downto 0 do
        FEstinguishers[I].Free;

    FEstinguishers.Clear;

    for var I := 0 to lCount - 1 do
    begin
      var
      aFrame := TframeFMXMobileEstinguisher.Create(self);
      aFrame.Name := 'frameEstinguisher' + I.ToString;
      FEstinguishers.Add(aFrame);
      aFrame.Align := TAlignLayout.Top;
      aFrame.Position.Y := lTop;
      lTop := lTop + aFrame.Height;
      aFrame.Estintore := FStatino.Estintori[I];
      aFrame.Parent := self.VertScBox;
      aFrame.Visible := True;
    end
  end;
end;

procedure TframeFMXPhoenixReportListEstinguishers.TMSFMXImage1Click(Sender: TObject);
begin
  var
    dlg: TdlgPhoenixInputSearch.Create(self);
  try
    if dlg.ShowModal = mrOk then
    begin

    end;
  finally
    dlg.Free;
    dlg := nil;
  end;

end;

end.
