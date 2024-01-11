(********************************************************************************)
(* QuickReport Angled Label                                                     *)
(*                                                                              *)
(* This is a visual component to use with QuickReport. Its works under Delhi 1, *)
(* Delphi 2 (not tested yet) and Delphi 3 with QuickReport 1.x or 2.x           *)
(* Angle property allow to rotate label to any angle.                           *)
(*                                                                              *)
(* NOTE: This component was tested only with QuickReport 1.1a under Delphi 1,   *)
(* and QuickReport 2.0g under Delphi 3                                          *)
(*                                                                              *)
(* Copyright © 1997 by Francisco Maia Goncalves Neto                            *)
(* Email: fneto@libnet.com.br   or   fneto_br@hotmail.com                       *)
(*                                                                              *)
(* Thanks to Keith Wood (kwood@netinfo.com.au) and his LabelEffect component    *)
(*==============================================================================*)
(* This component is freeware and can be freely used and distributed in         *)
(* commercial and private environments.                                         *)
(* The source code may be freely distributed and used.                          *)
(* The author assumes no liability for damages, direct or consequential, which  *)
(* may result from the use of this component.                                   *)
(*                                                                              *)
(* Any comments or suggestions email-me please.                                 *)
(*==============================================================================*)
(* History                                                                      *)
(* July, 26, 1997 - Version 1.0                                                 *)
(*   . Initial version                                                          *)
(* August, 03, 1997 - Version 1.0a                                              *)
(*   . Bug fix! Several print bugs fixed under QR1 and QR2                      *)
(*   . Bug fix! Zoom of ParentReport considered in paint routine                *)
(********************************************************************************)

unit QrAngLbl;

{$I QRANGLBL.INC}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls
  {$IFDEF QR1X}
    , QuickRep;
  {$ELSE}
    , QuickRpt, QrCtrls;
  {$ENDIF} {DEF QR1X}

type
  TAngledValues = record
    TextWidth, TextHeight,
    GapTextWidth, GapTextHeight,
    TotalWidth, TotalHeight,
    posX, posY: Integer
  end;

  {$IFDEF QR1X}
    TQRAngledLabel = class(TQRCustomControl)
  {$ELSE}
    TQRAngledLabel = class(TQRCustomLabel)
  {$ENDIF} {DEF QR1X}
  private
    { Private declarations }
    FFontAngle: Integer;
    FOnPrintEvent: TQRLabelOnPrintEvent;
    procedure SetFontAngle(pAngle: Integer);
  protected
    { Protected declarations }
    procedure Paint; override;
    procedure Print(X, Y: Integer); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Angle: Integer read FFontAngle write SetFontAngle default 45;
    property OnPrint: TQRLabelOnPrintEvent read FOnPrintEvent write FOnPrintEvent;
    { Inherited properties }
    property AutoSize;
    property Caption;
    property Color;
    property Font;
    property ParentFont;
    property Transparent;
  end;

procedure Register;
{$IFNDEF WIN32}
  function Trim(pString: string): string;
{$ENDIF} {NDEF WIN32}
function DegToRad(pDegrees: Real): Real;
procedure SetTextAngle(pCanvas: TCanvas; pAngle: Integer);
procedure CalculatePositions(pCanvas: TCanvas; pAngle: Integer;
  pCaption: string; var pValues: TAngledValues);

implementation

{$IFDEF WIN32}
  {$R QRANGLBL.D32}
{$ELSE} {DEF WIN32}
  {$R QRANGLBL.D16}
{$ENDIF} {DEF WIN32}

procedure Register;
begin
  {$IFDEF WIN32}
    RegisterComponents('QReport', [TQRAngledLabel]);
  {$ELSE}
    RegisterComponents('QuickReport', [TQRAngledLabel]);
  {$ENDIF} {DEF WIN32}
end;

{ Common routines ********************************************************************** }

{$IFNDEF WIN32}
  function Trim(pString: string): string;
  var
    n: Integer;
  begin
    for n := 1 to Length(pString) do
      if pString[n] <> #32 then
      begin
        Result := Copy(pString, n, Length(pString));
        Exit;
      end
    ;
    Result := '';
  end;
{$ENDIF} {NDEF WIN32}

function DegToRad(pDegrees: Real): Real;
begin
  Result := (pDegrees * PI / 180);
end;

procedure SetTextAngle(pCanvas: TCanvas; pAngle: Integer);
{This procedure was writen by Keith Wood}
var
  FntLogRec: TLogFont { Storage area for font information } ;
begin
  { Get the current font information. We only want to modify the angle }
  GetObject(pCanvas.Font.Handle, SizeOf(FntLogRec), Addr(FntLogRec));

  { Modify the angle. "The angle, in tenths of a degrees, between the base
    line of a character and the x-axis." (Windows API Help file.) }
  FntLogRec.lfEscapement := (pAngle * 10);
  FntLogRec.lfOutPrecision := OUT_TT_ONLY_PRECIS;  { Request TrueType precision }

  { Delphi will handle the deallocation of the old font handle }
  pCanvas.Font.Handle := CreateFontIndirect(FntLogRec);
end;

procedure CalculatePositions(pCanvas: TCanvas; pAngle: Integer;
  pCaption: string; var pValues: TAngledValues);
var
  fntWdt, fntHgt: Integer;
  angB: Real;
begin
  with pCanvas do
  begin
    SetTextAngle(pCanvas, pAngle) { Adjust font } ;

    { Calculate intermediate values }
    case pAngle of
      0..89   : angB := DegToRad(90 - pAngle);
      90..179 : angB := DegToRad(pAngle - 90);
      180..269: angB := DegToRad(270 - pAngle);
    else {270..359}
      angB := DegToRad(pAngle - 270);
    end;
    fntWdt := TextWidth(pCaption);
    fntHgt := TextHeight(pCaption);
    pValues.TextWidth     := Round(sin(angB) * fntWdt);
    pValues.GapTextWidth  := Round(cos(angB) * fntHgt);
    pValues.TextHeight    := Round(cos(angB) * fntWdt);
    pValues.GapTextHeight := Round(sin(angB) * fntHgt);

    { Calculate new sizes of component }
    pValues.TotalWidth  := (pValues.TextWidth + pValues.GaptextWidth);
    pValues.TotalHeight := (pValues.TextHeight + pValues.GapTextHeight);

    { Calculate draw position of text }
    case pAngle of
      0..89:
      begin
        pValues.posX := 0;
        pValues.posY := pValues.TextHeight
      end;
      90..179:
      begin
        pValues.posX := pValues.TextWidth;
        pValues.posY := pValues.TotalHeight
      end;
      180..269:
      begin
        pValues.posX := pValues.TotalWidth;
        pValues.posY := pValues.GapTextHeight
      end;
    else {270..359}
      begin
        pValues.posX := pValues.GapTextWidth;
        pValues.posY := 0
      end;
    end;
  end;
end;

{ TQRAngledLabel *********************************************************************** }

constructor TQRAngledLabel.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);

   { Only TrueType fonts can be cornered }
   if (Font.Name = 'MS Sans Serif') or (Font.Name = 'System') then
     Font.Name := 'Arial'
   ;

   SetFontAngle(45) { Default angle } ;
end;

procedure TQRAngledLabel.SetFontAngle(pAngle: Integer);
begin
  if FFontAngle <> pAngle then
  begin
    FFontAngle := (pAngle mod 360);
    Invalidate { Redraw } ;
  end;
end;

procedure TQRAngledLabel.Paint;
var
  aValues: TAngledValues;
  aCaption: string;
begin
  if Length(Trim(Caption)) <> 0 then
    aCaption := Caption
  else
    aCaption := ('(' + Name + ')')
  ;

  Canvas.Font := Font;
  {$IFDEF QR2X}
    Canvas.Font.Size := Round(Font.Size * ParentReport.Zoom / 100);
  {$ENDIF} {DEF QR2X}
  CalculatePositions(Canvas, Angle, aCaption, aValues);
  with Canvas do
  begin
    Brush.Color := Color;
    if not Transparent then
      Brush.Style := bsSolid
    else
      Brush.Style := bsClear
    ;

    if AutoSize then
      SetBounds(Left, Top, aValues.TotalWidth, aValues.TotalHeight)
    ;

    FillRect(Rect(0, 0, Width, Height));
    TextRect(Rect(0, 0, Width, Height), aValues.posX, aValues.posY, aCaption);
  end;
end;

procedure TQRAngledLabel.Print(X, Y : Integer);
var
  aCanvas: TCanvas;
  aValues {$IFDEF QR1X} , bValues {$ENDIF} : TAngledValues;
  aCaption: string;
  initX, initY, finiX, finiY, posX, posY: Integer;
  aRect: TRect;
begin
  aCaption := Caption;
  if Assigned(FOnPrintEvent) and not (csDesigning in ComponentState) then
    FOnPrintEvent(Self, aCaption)
  ;

  {$IFDEF QR1X}
    aCanvas := QRPrinter.Canvas;
  {$ELSE}
    aCanvas := ParentReport.QRPrinter.Canvas;
  {$ENDIF} {DEF QR1X}

  aCanvas.Font := Font;
  {$IFDEF QR1X}
    aCanvas.Font.Size := Trunc(Abs(ParentReport.XPos(Font.Size)));
    { Why values aren´t correctly returned on call for QRPrinter.Canvas in QR1 ??? }
    Canvas.Font := Font;
    CalculatePositions(Canvas, Angle, aCaption, bValues);
  {$ENDIF} {DEF QR1X}
  CalculatePositions(aCanvas, Angle, aCaption, aValues);

  with aCanvas do
  begin
    Brush.Color := Color;
    if not Transparent then
      Brush.Style := bsSolid
    else
      Brush.Style := bsClear
    ;

    {$IFDEF QR1X}
      initX := ParentReport.XPos(X + Left);
      initY := ParentReport.YPos(Y + Top);
      if AutoSize then
      begin
        finiX := (initX + ParentReport.XPos(bValues.TotalWidth));
        finiY := (initY + ParentReport.YPos(bValues.TotalHeight));
      end else
      begin
        finiX := (initX + ParentReport.XPos(Width));
        finiY := (initY + ParentReport.YPos(Height));
      end;
      posX := (initX + ParentReport.XPos(bValues.posX));
      posY := (initY + ParentReport.YPos(bValues.posY));
    {$ELSE}
      initX := ParentReport.QrPrinter.XPos(X + Size.Left);
      initY := ParentReport.QrPrinter.YPos(Y + Size.Top);
      if AutoSize then
      begin
        finiX := (initX + aValues.TotalWidth);
        finiY := (initY + aValues.TotalHeight);
      end else
      begin
        finiX := (initX + ParentReport.QrPrinter.XPos(Size.Width));
        finiY := (initY + ParentReport.QrPrinter.YPos(Size.Height));
      end;
      posX := (initX + aValues.posX);
      posY := (initY + aValues.posY);
    {$ENDIF} {DEF QR1X}

    aRect := Rect(initX, initY, finiX, finiY);
    FillRect(aRect);
    TextRect(aRect, posX, posY, aCaption);
  end;
end;

end.

