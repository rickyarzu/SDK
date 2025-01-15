unit Janua.FMX.frameFNCBlox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCBloxCoreTypes,
  FMX.TMSFNCBloxCoreUtils, FMX.TMSFNCBloxCoreLine, FMX.TMSFNCBloxCorePolygon, FMX.TMSFNCBloxCoreTextCell,
  FMX.TMSFNCBloxCoreLineArrow, FMX.TMSFNCBloxCoreLinkPoint, FMX.TMSFNCBloxCoreHandle, FMX.TMSFNCBloxCoreGroup,
  FMX.TMSFNCBloxUISnapGrid, FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement, FMX.TMSFNCBloxUIRegistration,
  FMX.TMSFNCBloxUIRenderer, FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl,
  // Janua
  Janua.FMX.dlgNotes, Janua.Core.Types;

type
  TframeFNCBloxDrawing = class(TFrame)
    pnlButtons: TPanel;
    btnClear: TButton;
    btnRedraw: TButton;
    btnDelLast: TButton;
    btnAddNotes: TButton;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    procedure btnAddNotesClick(Sender: TObject);
    procedure TMSFNCBloxControl1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
      X, Y: Single);
    procedure TMSFNCBloxControl1Click(Sender: TObject);
    procedure btnRedrawClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    FDrawing: boolean; // to indicate that we should be FDrawing in the `OnMouseMove` event
    FImgDrawings: TJanuaImageDraws;
    LastDraw: TJanuaDraw;
    FOffset: Single;
    FCanvasControl: TControl;
    FCoordCaption: string;
    FCoordinates: string;
    FdlgFMXNotes: TdlgFMXNotes;
    FCount: string;
    FImageDrawings: TJanuaImageDraws;
  protected
    FJanuaBlob: TJanuaBlob;
    VX: Single;
    VY: Single;
    procedure FreeNotes;
    procedure DrawCanvas(xpre, ypre, X, Y, Offset: Single);
  public
    procedure btnNoteOKClick(Sender: TObject);
    procedure btnNoteCancelClick(Sender: TObject);
  public
    property ImageDrawings: TJanuaImageDraws read FImageDrawings write FImageDrawings;
  end;

implementation

{$R *.fmx}

uses Janua.Application.Framework, Janua.FXM.FNCBloxControls;

procedure TframeFNCBloxDrawing.btnAddNotesClick(Sender: TObject);
begin
  if not Assigned(FdlgFMXNotes) then
    FdlgFMXNotes := TdlgFMXNotes.Create(self);
  FdlgFMXNotes.OkEvent := btnNoteOKClick;
  FdlgFMXNotes.CancelEvent := btnNoteCancelClick;
{$IFDEF MSWINDOWS}
  FdlgFMXNotes.ShowModal;
{$ELSE}
  FdlgFMXNotes.WindowState := TWindowState.wsMaximized;
  FdlgFMXNotes.ShowModal;
{$ENDIF}
end;

procedure TframeFNCBloxDrawing.btnClearClick(Sender: TObject);
begin
  TMSFNCBloxControl1.Blox.Clear;
end;

procedure TframeFNCBloxDrawing.btnNoteCancelClick(Sender: TObject);
begin
  FreeNotes
end;

procedure TframeFNCBloxDrawing.btnNoteOKClick(Sender: TObject);
begin
  if Assigned(FdlgFMXNotes) then
  begin
    FImgDrawings.Notes := FdlgFMXNotes.Memo1.Lines.Text;
    FreeNotes;
  end;
end;

procedure TframeFNCBloxDrawing.btnRedrawClick(Sender: TObject);
begin
  TMSFNCBloxControl1.Repaint
end;

procedure TframeFNCBloxDrawing.DrawCanvas(xpre, ypre, X, Y, Offset: Single);
begin

end;

procedure TframeFNCBloxDrawing.FreeNotes;
begin
  if Assigned(FdlgFMXNotes) then
  begin
    FdlgFMXNotes.Free;
    FdlgFMXNotes := nil;
  end;
end;

procedure TframeFNCBloxDrawing.TMSFNCBloxControl1Click(Sender: TObject);
begin
  TMSFNCBloxControl1.BeginUpdate;

  var
  sp := TCircle.Create;

  sp.Width := 10;
  sp.Height := 10;
  sp.FontSize := 16;
  sp.FillColor := TAlphaColors.Red;

  sp.Top := VY - (sp.Height / 2);
  sp.Left := VX - (sp.Width / 2);
  TMSFNCBloxControl1.Blox.Add(sp);

  TMSFNCBloxControl1.EndUpdate;
end;

procedure TframeFNCBloxDrawing.TMSFNCBloxControl1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if Button = TMouseButton.mbLeft then
  begin
    VX := X - TMSFNCBloxControl1.LeftRuler.Size;
    VY := Y - TMSFNCBloxControl1.TopRuler.Size;
  end;
end;

end.
