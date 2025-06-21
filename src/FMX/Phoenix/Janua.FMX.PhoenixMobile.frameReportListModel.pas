unit Janua.FMX.PhoenixMobile.frameReportListModel;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.TMSHTMLText,
  FMX.Layouts,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO;

type
  TframeFMXPhoenixReportListModel = class(TFrame)
    VertScBox: TVertScrollBox;
    rcReportSummary: TRectangle;
    txtReportSummay: TTMSFMXHTMLText;
  protected
    FStatino: TStatino;
    procedure SetStatino(const Value: TStatino);
    { Private declarations }
  public
    property Statino: TStatino read FStatino write SetStatino;
  public
    procedure Setup; virtual;
  end;

implementation

{$R *.fmx}
{ TframeFMXPhoenixReportListModel }

procedure TframeFMXPhoenixReportListModel.SetStatino(const Value: TStatino);
begin
  if (FStatino <> Value) then
  begin
    FStatino := Value;
    if Assigned(FStatino) then
      Setup
  end;
end;

procedure TframeFMXPhoenixReportListModel.Setup;
begin
  txtReportSummay.Text := '<b>Intervento N°: </b> ' + FStatino.CHIAVE.ToString +
    ' <br /><b>Mese Emissione: </b>  <br /><b>Amministratore: </b> ' + FStatino.NOMEAMMINISTRATORE + '<br />'
    + '<b>Contratto: </b>' + FStatino.DESCRIZIONECONTRATTO + '<br /><b>Filiale: </b>' + FStatino.NOMEFILIALE
    + '<br />';
end;

end.
