unit Janua.FMX.PhoenixMobile.frameReportListDoors;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Generics.Collections,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.TMSHTMLText, FMX.Layouts,
  // Janua
  Janua.FMX.PhoenixMobile.frameReportListModel, Janua.FMX.PhoenixMobile.frameDoor,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixReportListModel1 = class(TframeFMXPhoenixReportListModel)
  private
    FDoors: TObjectList<TframeFMXMobileDoor>;
    procedure SetDoors(const Value: TObjectList<TframeFMXMobileDoor>);
    { Private declarations }
  public
    { Public declarations }
    property Doors: TObjectList<TframeFMXMobileDoor> read FDoors write SetDoors;
    procedure Setup; override;
  end;

var
  frameFMXPhoenixReportListModel1: TframeFMXPhoenixReportListModel1;

implementation

{$R *.fmx}

{ TframeFMXPhoenixReportListModel1 }

procedure TframeFMXPhoenixReportListModel1.SetDoors(const Value: TObjectList<TframeFMXMobileDoor>);
begin
  FDoors := Value;
end;

procedure TframeFMXPhoenixReportListModel1.Setup;
begin
  inherited;
  var
  lCount := FStatino.Porte.Count;
  var
  lTop := rcReportSummary.Height + rcReportSummary.Position.Y + 1;
  if lCount > 0 then
  begin
    if FDoors.Count > 0 then
      for var I := FDoors.Count downto 0 do
        FDoors[I].Free;

    FDoors.Clear;

    for var I := 0 to lCount - 1 do
    begin
      var
      aFrame := TframeFMXMobileDoor.Create(self);
      aFrame.Name := 'frameDoor' + I.ToString;
      FDoors.Add(aFrame);
      aFrame.Align := TAlignLayout.Top;
      aFrame.Position.Y := lTop;
      lTop := lTop + aFrame.Height;
      aFrame.Door := FStatino.Porte[I];
      aFrame.Parent := self.VertScBox;
      aFrame.Visible := True;
    end
  end;

end;

end.
