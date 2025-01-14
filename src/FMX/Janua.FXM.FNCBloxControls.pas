unit Janua.FXM.FNCBloxControls;

interface

uses System.SysUtils, FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement, FMX.TMSFNCBloxCoreTypes,
  // Janua
  Janua.Core.Types;

type
  TCircle = class(TTMSFNCBloxBlock)
  public
    constructor Create; override;
    procedure GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer); override;
  end;

implementation

{ TCircle }

constructor TCircle.Create;
var
  w, h: Double;
begin
  inherited;

  w := OriginalRect.Right - OriginalRect.Left;
  h := OriginalRect.Bottom - OriginalRect.Top;

  LinkPoints.Clear;
  {
    LinkPoints.AddLink(0, h / 4, aoLeft);
    LinkPoints.AddLink(0, 3 * h / 4, aoLeft);
    LinkPoints.AddLink(w, h / 2, aoRight);
  }
end;

procedure TCircle.GetBlockPath(APath: TTMSFNCBloxPath; ADrawer: TTMSFNCBloxBlockDrawer);
var
  poly: TTMSFNCBloxPointArray;
  w, h: Double;
begin
  inherited;
  APath.Reset;

  w := OriginalRect.Right - OriginalRect.Left;
  h := OriginalRect.Bottom - OriginalRect.Top;

  {
    APath.AddLine(0, h/4, w/4, h/4);
    APath.CloseFigure(False);

    APath.AddLine(0, 3 * h / 4, w/4, 3 * h / 4);
    APath.CloseFigure(False);

    APath.AddLine(w/4, 0, w/4, h);
    APath.AddLine(w/4, 0, w/2, 0);
  }
  APath.AddArc(0, 0, w, h, 0, 360);
  // APath.AddLine(w/2, h, w/4, h);
  APath.CloseFigure(False);

  // APath.AddLine(3 * w / 4, h / 2, w, h / 2);
end;

end.
