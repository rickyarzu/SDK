unit UCustomSVGBlox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl,
  FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement, FMX.TMSFNCBloxCorePaintInfo,
  FMX.TMSFNCBloxCoreLinkPoint, FMX.TMSFNCBloxCoreLine, FMX.TMSFNCBloxCoreTypes, FMX.TMSFNCBloxCoreTextCell,
  FMX.TMSFNCBloxSelector,   FMX.TMSFNCBloxUIRegistration,
  FMX.TMSFNCBloxCoreUtils, FMX.TMSFNCBloxCorePolygon,
  FMX.TMSFNCBloxCoreLineArrow, FMX.TMSFNCBloxCoreHandle,
  FMX.TMSFNCBloxCoreGroup, FMX.TMSFNCBloxUISnapGrid, FMX.TMSFNCBloxUIRenderer,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
 TSolarPanelBlock = class(TTMSFNCBloxBlock)
 public
    constructor Create; override;
    procedure GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer); override;
 end;

 TConverterBlock = class(TTMSFNCBloxBlock)
 public
    constructor Create; override;
    procedure GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer); override;
 end;

  TForm1 = class(TForm)
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCBloxControl1RegisterElements(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var
  sp, psp: TSolarPanelBlock;
  c: TConverterBlock;
  x, y, I: Integer;
  l: TTMSFNCBloxSideLine;
begin
  TMSFNCBloxControl1.BeginUpdate;

  x := Round(TMSFNCBloxControl1.Width / 4);
  y := Round(TMSFNCBloxControl1.Height / 6);

  for I := 0 to 5 do
  begin
    sp := TSolarPanelBlock.Create;

    sp.Width := 80;
    sp.Height := 80;
    sp.FontSize := 16;
    sp.Text := (Random(100) + 30).ToString + 'W';
    sp.VertAlign := vaBottom;

    sp.Top := ((I div 3) + 1) * y;
    if I < 3 then
      sp.Left := (I mod 3) * x + TMSFNCBloxControl1.Width / 5
    else
      sp.Left := (2 - I mod 3) * x + TMSFNCBloxControl1.Width / 5;

    TMSFNCBloxControl1.Blox.Add(sp);

    if (I > 0) and (psp <> nil) then
    begin
      l := TTMSFNCBloxSideLine.Create;
      l.Stroke.Color := gcOrange;
      l.Stroke.Width := 3;

      if I < 3 then
      begin
        l.SourceLinkPoint.AnchorLink := psp.LinkPoints[1];
        l.TargetLinkPoint.AnchorLink := sp.LinkPoints[0];
      end
      else if I = 3 then
      begin
         l.SourceLinkPoint.AnchorLink := psp.LinkPoints[1];
         l.TargetLinkPoint.AnchorLink := sp.LinkPoints[1];
      end
      else
      begin
        l.SourceLinkPoint.AnchorLink := psp.LinkPoints[0];
        l.TargetLinkPoint.AnchorLink := sp.LinkPoints[1];
      end;

      TMSFNCBloxControl1.Blox.Add(l);
    end;
    psp := sp;
  end;

  c := TConverterBlock.Create;
  c.Top := (4 * y);
  c.Left := (TMSFNCBloxControl1.Width - c.Width)/2;
  c.FontSize := 16;
  c.FontStyle := [xsBold];
  c.TextColor := gcDarkslateblue;
  c.Text := '3.2 kW' + #10#13 ;
  c.VertAlign := vaCenter;

  TMSFNCBloxControl1.Blox.Add(c);

  l := TTMSFNCBloxSideLine.Create;
  l.SourceLinkPoint.AnchorLink := sp.LinkPoints[0];
  l.TargetLinkPoint.AnchorLink := c.LinkPoints[0];
  l.Stroke.Color := gcOrange;
  l.Stroke.Width := 3;

  TMSFNCBloxControl1.Blox.Add(l);

  TMSFNCBloxControl1.EndUpdate;

end;

{ TSolarPanelBlock }

procedure TSolarPanelBlock.GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer);
begin
  inherited;
  APath.Reset;

end;

{ TConverterBlock }

constructor TSolarPanelBlock.Create;
begin
  inherited;
  Restrictions := Restrictions + [crKeepRatio];
  Picture.LoadFromFile('..\..\solar-panel.svg');
  LinkPointStyle := lptNone;
  LinkPoints.Clear;
  LinkPoints.AddLink(2, (OriginalRect.Bottom - OriginalRect.Top)/2, aoLeft);
  LinkPoints.AddLink((OriginalRect.Right - OriginalRect.Left) - 2, (OriginalRect.Bottom - OriginalRect.Top) / 2, aoRight);
end;

constructor TConverterBlock.Create;
begin
  inherited;
  Width := 100;
  Height := 100;
  Restrictions := Restrictions + [crKeepRatio];
  Picture.LoadFromFile('..\..\electric-meter.svg');
  LinkPointStyle := lptNone;
  LinkPoints.Clear;
  LinkPoints.AddLink((OriginalRect.Right - OriginalRect.Left) / 2, 0, aoUp);
  LinkPoints.AddLink(0, (OriginalRect.Bottom - OriginalRect.Top) / 2, aoLeft);
  LinkPoints.AddLink(OriginalRect.Right - OriginalRect.Left, (OriginalRect.Bottom - OriginalRect.Top) / 2, aoRight);
end;

procedure TConverterBlock.GetBlockPath(APath: TTMSFNCBloxPath;
  ADrawer: TTMSFNCBloxBlockDrawer);
begin
  inherited;
  APath.Reset;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  TTMSFNCUtils.OpenURL('https://www.tmssoftware.com/site/tmsfncblox.asp');
end;

procedure TForm1.TMSFNCBloxControl1RegisterElements(Sender: TObject);
begin
  RegisterElement(TSolarPanelBlock, '', 'Solar Panel', 'All SVG Blocks');
  RegisterElement(TConverterBlock, '', 'Converter', 'All SVG Blocks');
end;

end.
