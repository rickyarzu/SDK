unit Janua.FMX.PhoenixMobile.frameReportListEstinguishers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Janua.FMX.PhoenixMobile.frameReportListModel, FMX.Objects, FMX.TMSHTMLText, FMX.Layouts,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, Janua.FMX.PhoenixMobile.frameEstinguisher,
  Janua.FMX.PhoenixMobile.frameEstinguisherSettings;

type
  TframeFMXPhoenixReportListEstinguishers = class(TframeFMXPhoenixReportListModel)
    VertScBoxEstinguishers: TVertScrollBox;
  private
    FStatino: TStatino;
    FEstinguishers: TObjectList<TframeFMXMobileEstinguisher>;
    procedure SetStatino(const Value: TStatino);
    procedure SetEstinguishers(const Value: TObjectList<TframeFMXMobileEstinguisher>);
    { Private declarations }
  public
    { Public declarations }
    property Statino: TStatino read FStatino write SetStatino;
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

uses Janua.FMX.PhoenixMobile.dmAppMobileController;
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

procedure TframeFMXPhoenixReportListEstinguishers.SetStatino(const Value: TStatino);
begin
  if FStatino <> Value then
  begin
    FStatino := Value;
    if Assigned(FStatino) then
    begin
      txtReportSummay.Text := '<b>Intervento N°: </b> ' + FStatino.CHIAVE.ToString +
        ' <br /><b>Mese Emissione: </b>  <br /><b>Amministratore: </b> ' + FStatino.NOMEAMMINISTRATORE +
        '<br />' + '<b>Contratto: </b>' + FStatino.DESCRIZIONECONTRATTO + '<br /><b>Filiale: </b>' +
        FStatino.NOMEFILIALE + '<br />';
    end;
    Setup
  end;
end;

procedure TframeFMXPhoenixReportListEstinguishers.Setup;
begin
  var
  lCount := FStatino.Estintori.Count;
  var
  lTop := 0.0;
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
      aFrame.Parent := VertScBoxEstinguishers;
      aFrame.Visible := True;
      // aFrame.OnItemClick := ReportClick;
    end;
    // statini: TObjectList<TLSStatino>
  end;

end;

end.
