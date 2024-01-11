unit AniFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IKTypes, IKAnimation, ExtCtrls, StdCtrls, ComCtrls;

type
  TAniForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DurationLabel: TLabel;
    Duration: TTrackBar;
    AniPages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BezierList: TListBox;
    BezierPanel: TPanel;
    BezierPaint: TPaintBox;
    Point2: TShape;
    Point1: TShape;
    Steps: TTrackBar;
    StepsLabel: TLabel;
    CeilCheck: TCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DurationChange(Sender: TObject);
    procedure Point2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BezierPaintPaint(Sender: TObject);
    procedure BezierListClick(Sender: TObject);
    procedure AniPagesChange(Sender: TObject);
    procedure StepsChange(Sender: TObject);
  private
    FOpposite: Boolean;
    FDuration: Single;
    FFunc: TIKTimingFunction;
    procedure SetTimingFunction(const Func: TIKTimingFunction);
    procedure SetCubicBezierFunction(const Func: TIKTimingFunction);
    procedure SetStepsFunction(const Func: TIKTimingFunction);
  public
  end;

var
  AniForm: TAniForm;

implementation

{$R *.dfm}

procedure TAniForm.FormCreate(Sender: TObject);
begin
  DurationChange(nil);
  AniPagesChange(nil);
end;

procedure TAniForm.Button1Click(Sender: TObject);
var
  Ani: TIKPropertyAnimation;
begin
  if not FOpposite then
    Ani := TIKPropertyAnimation.Create(Panel2, 'Left', 300)
  else
    Ani := TIKPropertyAnimation.Create(Panel2, 'Left', 50);
  Ani.Duration := FDuration;
  Ani.TimingFunction := LinearTimingFunc;
  Ani.Start;

  if not FOpposite then
    Ani := TIKPropertyAnimation.Create(Panel3, 'Left', 300)
  else
    Ani := TIKPropertyAnimation.Create(Panel3, 'Left', 50);
  Ani.Duration := FDuration;
  Ani.TimingFunction := FFunc;
  Ani.Start;

  FOpposite := not FOpposite;
end;

procedure TAniForm.DurationChange(Sender: TObject);
begin
  FDuration := Duration.Position / 1000;
  DurationLabel.Caption := 'Duration: ' + FloatToStr(FDuration) + 's';
end;

procedure TAniForm.Point2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  P: TShape;
begin
  if ssLeft in Shift then
  begin
    P := TShape(Sender);

    with BezierPanel.ScreenToClient(Mouse.CursorPos) do
    begin
      P.Left := X - P.Width div 2;
      if P.Left < 0 then
        P.Left := 0;
      if P.Left > BezierPanel.Width - P.Width then
        P.Left := BezierPanel.Width - P.Width;
      P.Top := Y - P.Height div 2;
      if P.Top < 0 then
        P.Top := 0;
      if P.Top > BezierPanel.Height - P.Height then
        P.Top := BezierPanel.Height - P.Height;
    end;

    FFunc.Kind := fkCubicBezier;
    FFunc.FirstPoint.X := (Point1.Left + Point1.Width div 2) / BezierPanel.Width;
    FFunc.FirstPoint.Y := 1 - ((Point1.Top + Point1.Height div 2) / BezierPanel.Height);
    FFunc.SecondPoint.X := (Point2.Left + Point2.Width div 2) / BezierPanel.Width;
    FFunc.SecondPoint.Y := 1 - ((Point2.Top + Point2.Height div 2) / BezierPanel.Height);

    BezierPaint.Repaint;
  end;
end;

procedure TAniForm.SetCubicBezierFunction(const Func: TIKTimingFunction);
begin
  Point1.Left := Round(Func.FirstPoint.X * BezierPanel.Width) - Point1.Width div 2;
  Point1.Top := Round((1 - Func.FirstPoint.Y) * BezierPanel.Height) - Point1.Height div 2;
  Point2.Left := Round(Func.SecondPoint.X * BezierPanel.Width) - Point2.Width div 2;
  Point2.Top := Round((1 - Func.SecondPoint.Y) * BezierPanel.Height) - Point2.Height div 2;

  BezierPaint.Repaint;
end;

procedure TAniForm.SetStepsFunction(const Func: TIKTimingFunction);
begin
end;

procedure TAniForm.SetTimingFunction(const Func: TIKTimingFunction);
begin
  FFunc := Func;
  case Func.Kind of
    fkCubicBezier: SetCubicBezierFunction(Func);
    fkSteps: SetStepsFunction(Func);
  end;
end;

procedure TAniForm.BezierPaintPaint(Sender: TObject);
var
  Points: array of TPoint;
begin
  with BezierPaint.Canvas do
  begin
    SetLength(Points, 4);
    Points[0] := Point(0, BezierPanel.Height);
    Points[1] := Point(Point1.Left + Point1.Width div 2,
      Point1.Top + Point1.Height div 2);
    Points[2] := Point(Point2.Left + Point2.Width div 2,
      Point2.Top + Point2.Height div 2);
    Points[3] := Point(BezierPanel.Width, 0);
    PolyBezier(Points);

    MoveTo(Points[0].X, Points[0].Y);
    LineTo(Points[1].X, Points[1].Y);

    MoveTo(Points[3].X, Points[3].Y);
    LineTo(Points[2].X, Points[2].Y);
  end;
end;

procedure TAniForm.BezierListClick(Sender: TObject);
begin
  if BezierList.ItemIndex >= 0 then
  begin
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Default') then
      SetTimingFunction(DefaultTimingFunc);
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Linear') then
      SetTimingFunction(LinearTimingFunc);
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Ease') then
      SetTimingFunction(EaseTimingFunc);
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Ease-In') then
      SetTimingFunction(EaseInTimingFunc);
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Ease-Out') then
      SetTimingFunction(EaseOutTimingFunc);
    if SameText(BezierList.Items[BezierList.ItemIndex], 'Ease-In-Out') then
      SetTimingFunction(EaseInOutTimingFunc);
  end;
end;

procedure TAniForm.AniPagesChange(Sender: TObject);
begin
  case AniPages.TabIndex of
    0:
      begin
        if BezierList.ItemIndex < 0 then
          BezierList.ItemIndex := 0;
        BezierListClick(nil);
      end;
    1:
      StepsChange(nil);
  end;
end;

procedure TAniForm.StepsChange(Sender: TObject);
begin
  StepsLabel.Caption := 'Number of steps: ' + IntToStr(Steps.Position);
  SetTimingFunction(TimingFunction(Steps.Position, CeilCheck.Checked));
end;

end.
