unit Janua.FMX.FormControls;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // janua
  Janua.Core.Classes,
  // fmx core
  FMX.TabControl, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics;

type
  TJanuaFmxBadge = class(TJanuaCoreComponent)
  private
    FBadge: Integer;
    FShowBadge: Boolean;
    FBadgeItem: TStyledControl;
    FVPadding: Integer;
    FVertTextMargin: Integer;
    FHPadding: Integer;
    FHorzTextMargin: Integer;
    procedure SetBadge(const Value: Integer);
    procedure SetShowBadge(const Value: Boolean);
    procedure SetBadgeItem(const Value: TStyledControl);
    procedure SetHorzTextMargin(const Value: Integer);
    procedure SetHPadding(const Value: Integer);
    procedure SetVertTextMargin(const Value: Integer);
    procedure SetVPadding(const Value: Integer);
    procedure DrawBadge(Canvas: TCanvas; const ARect: TRectF; const Text: string;
      const Color: TAlphaColor = TAlphaColorRec.Red);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure BadgeItemPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  published
    { Public declarations }
    property Badge: Integer read FBadge write SetBadge;
    property ShowBadge: Boolean read FShowBadge write SetShowBadge default False;
    property BadgeItem: TStyledControl read FBadgeItem write SetBadgeItem;
    property HPadding: Integer read FHPadding write SetHPadding default 2; // = 2
    property VPadding: Integer read FVPadding write SetVPadding default 2; // = 2
    property HorzTextMargin: Integer read FHorzTextMargin write SetHorzTextMargin default 6; // = 6
    property VertTextMargin: Integer read FVertTextMargin write SetVertTextMargin default 4; // = 4
  end;

implementation

procedure TJanuaFmxBadge.DrawBadge(Canvas: TCanvas; const ARect: TRectF; const Text: string;
  const Color: TAlphaColor = TAlphaColorRec.Red);
var
  R: TRectF;
  TextSize: TSizeF;
  Brush: TBrush;
  BadgeRadius: Single;
begin
  // not(csDesigning in self.ComponentState) and
  if Assigned(Canvas) and (FBadge > 0) then
    try
      Canvas.Font.Size := 12;
      // Measure text width
      TextSize := TSizeF.Create(Canvas.TextWidth(Text), Canvas.TextHeight(Text));
      // Calculate badge rect
      R := TRectF.Create(0, 0, HorzTextMargin * 2 + TextSize.Width, VertTextMargin * 2 + TextSize.Height);
      if R.Width < R.Height then
        R.Width := R.Height;
      // Position rect
      R := TRectF.Create(ARect.Right - R.Width, ARect.Top, ARect.Right, ARect.Top + R.Height);
      R.Offset(-FHPadding, FVPadding);
      // Draw badge
      BadgeRadius := R.Height / 2;
      Brush := TBrush.Create(TBrushKind.Solid, Color);
      try
        Canvas.FillRect(R, BadgeRadius, BadgeRadius, AllCorners, 1, Brush);
      finally
        Brush.Free;
        Brush := nil;
      end;
      // Draw text
      Canvas.Fill.Color := TAlphaColorRec.White;
      Canvas.FillText(R, Text, False, 1, [], TTextAlign.Center, TTextAlign.Center);
    except
      on e: exception do
        raise exception.Create('TJanuaFmxBadge.DrawBadge Error Drawing Badge');
    end;
end;

{ TJanuaFmxBadge }

procedure TJanuaFmxBadge.BadgeItemPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  // not(csDesigning in self.ComponentState) and
  if Assigned(Sender) and Assigned(Canvas) and ShowBadge then
    DrawBadge(Canvas, ARect, FBadge.ToString);
end;

constructor TJanuaFmxBadge.Create(AOwner: TComponent);
begin
  inherited;
  FShowBadge := False;
  FBadge := 0;
  FHPadding := 2;
  FVPadding := 2;
  HorzTextMargin := 6;
  VertTextMargin := 4;
end;

procedure TJanuaFmxBadge.SetBadge(const Value: Integer);
begin
  if (FBadge <> Value) then
  begin
    FBadge := Value;
    // not(csDesigning in self.ComponentState) and
    if Assigned(FBadgeItem) then
    begin
      FBadgeItem.Repaint;
      // This piece of Code is not Exactly what was needed ....
      // FBadgeItem.Visible := not FBadge = 0;
    end;
  end;
end;

procedure TJanuaFmxBadge.SetBadgeItem(const Value: TStyledControl);
begin
  FBadgeItem := Value;
  // not(csDesigning in self.ComponentState) and
  if Assigned(FBadgeItem) then
    FBadgeItem.OnPaint := BadgeItemPaint;
end;

procedure TJanuaFmxBadge.SetHorzTextMargin(const Value: Integer);
begin
  FHorzTextMargin := Value;
end;

procedure TJanuaFmxBadge.SetHPadding(const Value: Integer);
begin
  FHPadding := Value;
end;

procedure TJanuaFmxBadge.SetShowBadge(const Value: Boolean);
begin
  if FShowBadge <> Value then
  begin
    FShowBadge := Value;
    // not(csDesigning in self.ComponentState) and
    if Assigned(FBadgeItem) then
      BadgeItem.Repaint;
  end;
end;

procedure TJanuaFmxBadge.SetVertTextMargin(const Value: Integer);
begin
  FVertTextMargin := Value;
end;

procedure TJanuaFmxBadge.SetVPadding(const Value: Integer);
begin
  FVPadding := Value;
end;

end.
