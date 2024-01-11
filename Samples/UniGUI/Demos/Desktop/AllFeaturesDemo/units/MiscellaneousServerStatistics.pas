// Server Statistics = Miscellaneous
unit MiscellaneousServerStatistics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniStringGrid, uniGroupBox,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniTimer, uniButton;

type
  TUniMiscellaneousServerStatistics = class(TUniFrame)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniGroupBox1: TUniGroupBox;
    UniStringGrid1: TUniStringGrid;
    UniTabSheet2: TUniTabSheet;
    UniGroupBox2: TUniGroupBox;
    UniStringGrid2: TUniStringGrid;
    StatTimer: TUniTimer;
    procedure StatTimerTimer(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure UniStringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
  private
    { Private declarations }
    procedure UpdateStats;
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer;

{$R *.dfm}

procedure TUniMiscellaneousServerStatistics.StatTimerTimer(Sender: TObject);
begin
  if UniServerInstance=nil then
  begin
    StatTimer.Enabled:=False;
    Exit;
  end;

  UpdateStats;
end;

procedure TUniMiscellaneousServerStatistics.UniFrameCreate(Sender: TObject);
begin
  if UniServerInstance=nil then Exit;


  StatTimer.Enabled:=True;
  UpdateStats;
  UniPageControl1.ActivePage:=UniTabSheet1;

  with UniStringGrid1 do
  begin
    ColWidths[0]:=130;

    Cells[1, 0]:='Current';
    Cells[2, 0]:='Peak';
    Cells[3, 0]:='Max';

    Cells[1, 3]:='Sent';
    Cells[2, 3]:='Received';
    Cells[3, 3]:='Compression';

    Cells[1, 5]:='Day(s)';
    Cells[2, 5]:='H : M : S';

    Cells[0, 1]:='Total Sessions';
    Cells[0, 2]:='Requests';
    Cells[0, 4]:='Bytes';
    Cells[0, 6]:='Uptime';
  end;

  with UniStringGrid2 do
  begin
    ColWidths[0]:=130;

    Cells[1, 0]:='Current';
    Cells[2, 0]:='Peak';

    Cells[1, 4]:='Current';
    Cells[2, 4]:='Peak';
    Cells[3, 4]:='Max';

    Cells[0, 1]:='Memory (Internal)';
    Cells[0, 2]:='Memory (Process)';
    Cells[0, 3]:='CPU Load (System)';
    Cells[0, 5]:='GDI Handles';
  end;
end;

procedure TUniMiscellaneousServerStatistics.UniStringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string; Attribs: TUniCellAttribs);
begin
  if (ACol=0) or (ARow=0) or (ARow=3) or (ARow=5) then
  begin
    Attribs.Color:=$E0E0E0;
    Attribs.Font.Style:=[fsBold];
  end;
end;

procedure TUniMiscellaneousServerStatistics.UniStringGrid2DrawCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string; Attribs: TUniCellAttribs);
begin
  if (ACol=0) or (ARow=0) or (ARow=4) then
  begin
    Attribs.Color:=$E0E0E0;
    Attribs.Font.Style:=[fsBold];
  end;
end;

procedure TUniMiscellaneousServerStatistics.UpdateStats;
var
  N1, N2 : Int64;
  Diff : TDateTime;
begin
  with UniServerInstance.ServerStats do
  begin
    UniStringGrid1.Cells[1,1]:=IntToStr(ActiveSessions);
    UniStringGrid1.Cells[2,1]:=IntToStr(PeakSessions);

    UniStringGrid1.Cells[1,2]:=IntToStr(ActiveRequests);
    UniStringGrid1.Cells[2,2]:=IntToStr(PeakRequests);

    UniStringGrid1.Cells[1,4]:=FloatToStrF(BytesSent/1000, ffNumber, 12, 0)+' K';
    UniStringGrid1.Cells[2,4]:=FloatToStrF(BytesReceived/1000, ffNumber, 12, 0)+' K';
    UniStringGrid1.Cells[3,4]:=Format('%2.1f%%', [CompressRate*100]);

    Diff := Now - UniServerInstance.StartTime;
    UniStringGrid1.Cells[1,6]:=IntToStr(Trunc(Diff));
    UniStringGrid1.Cells[2,6]:=FormatDateTime('hh:nn:ss', Frac(Diff));
  end;

  with UniServerInstance.ServerLimits do
  begin
    UniStringGrid1.Cells[3,1]:=FloatToStrF(MaxSessions, ffNumber, 12, 0);
    UniStringGrid1.Cells[3,2]:=FloatToStrF(MaxRequests, ffNumber, 12, 0);
  end;

  with UniServerInstance.ServerResources do
  begin
    N1:=MemoryUsed;
    N2:=ProcessMemoryUsed;
    UniStringGrid2.Cells[1,1]:=FloatToStrF(N1 div 1024, ffNumber, 12, 0)+' K';
    UniStringGrid2.Cells[2,1]:=FloatToStrF(PeakMemoryUsed div 1024, ffNumber, 12, 0)+' K';

    UniStringGrid2.Cells[1,2]:=FloatToStrF(N2 div 1024, ffNumber, 12, 0)+' K';
    UniStringGrid2.Cells[2,2]:=FloatToStrF(PeakProcessMemoryUsed div 1024, ffNumber, 12, 0)+' K';

    UniStringGrid2.Cells[1,3]:=Format('%0.1f %%', [CPUUsage*100]);
    UniStringGrid2.Cells[2,3]:=Format('%0.1f %%', [PeakCPUUsage*100]);

    UniStringGrid2.Cells[1,5]:=FloatToStrF(GDIObjects, ffNumber, 12, 0);
    UniStringGrid2.Cells[2,5]:=FloatToStrF(PeakGDIObjects, ffNumber, 12, 0);
  end;

  with UniServerInstance.ServerLimits do
  begin
    UniStringGrid2.Cells[3,5]:=FloatToStrF(MaxGDIObjects, ffNumber, 12, 0);
  end;

end;

initialization
  RegisterClass(TUniMiscellaneousServerStatistics);
end.
